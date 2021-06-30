#include <stdio.h>
#include <stdint.h>
#include <sys/time.h>
#include <sched.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <assert.h>
#include <stdbool.h>
#include <iostream>
#include <iomanip>

float check_frequency() 
{
    if (!is_check_freq) {
        return 1;
    }

    cout << "--------------------  CHECK FREQUENCY  ------------------------" << endl;

    int i;
    double timeStart, timeEnd, time_total, freq_Base;
    unsigned long long int cycleInStart, cycleInEnd;
    int N_LOOP = 5;

    //********************
    //** BASE FREQUENCY  *
    //********************
    timeStart = mygettime();
    reset_ccnt();
    reset_overflow_flags();
    enable_ccnt();
    usleep(10000);
    disable_ccnt()
    unsigned long long int cycleSpent = read_ccnt();
    timeEnd = mygettime();
   

    freq_Base = cycleSpent / (1000000000 * (timeEnd - timeStart));
    cout << "+ Base      frequency is " << freq_Base << "Ghz" << endl;


    //********************
    //** REAL FREQUENCY  *
    //********************
    cycleInStart = rdtsc();
    reset_ccnt();
    reset_overflow_flags();
    enable_ccnt();
    for (i = 0; i < N_LOOP; i++) 
    {
        __asm__ ("aloop: "
                "       ub	sp, sp, #592"
                "       add	x0, sp, 40"
                "       add	x3, sp, 40"
                "       add	x1, x0, :lo12:.LC0"
                "       add	x0, sp, 40"
                "       add	x0, sp, 40"
                "       add	x1, x0, :lo12:.LC1"
                "       add	x0, sp, 40"
                "       add	x0, sp, 40"
                "       add	sp, sp, 592"
                "       add	x0, x0, :lo12:_ZStL8__ioinit"
                "       add	x2, x0, :lo12:__dso_handle"
                "       add	x1, x0, :lo12:_ZStL8__ioinit"
                "       jnz    aloop" : : "a" (40000000UL)
        );
    }
    cycleInEnd = disable_ccnt();
    unsigned long long int cycleSpent = read_ccnt();
    unsigned long long int NbInstruction = (double) N_LOOP * (double) 40000000UL;
    float ipc = NbInstruction / (double) cycleSpent; //Should be equal to 1: 1 inst. per cycle
    float freq_Real = freq_Base * ipc;
    cout << "+ Current   frequency is " << freq_Real << "Ghz" << endl;



    //***************************************************
    //** OUTPUT: warning if the frequency is different  *
    //***************************************************
    if (freq_Base - freq_Real > 0.05) {
        cout << "+ /!\\ The frequency seems to be capped: -" << (1-ipc)*100 <<'%' <<  endl;
    } else if (freq_Real - freq_Base > 0.05) {
        cout << "+ /!\\ Turbo seems to be ON: +" << ipc  <<'%'  << " (be carful with the following values)"<< endl;
    } else{
        cout << "+ OK: the core is running at his frequency based value" << endl;
    }
    cout << endl << flush;



    return  ipc;
}


int main(int argc, char **argv) 
{
    check_frequency();
    return 0;
}
