# Active Noise Cancellation (ANC) using NLMS on Raspberry Pi Pico W

This project implements real-time Active Noise Cancellation (ANC) using the Normalized Least Mean Squares (NLMS) adaptive filtering algorithm on the Raspberry Pi Pico W. It uses two microphones and PWM speaker output, and supports FIR filtering and UDP-based audio streaming for playback.

## Features

- Real-time adaptive filtering using NLMS
- Dual microphone setup: one for speech+noise, one for noise reference
- Anti-noise signal output through PWM
- FIR bandstop filter with MATLAB-designed coefficients
- Wi-Fi UDP-based audio streaming and real-time playback
- Modular design: NLMS, FIR, and UDP handled in separate components

## Hardware Required

- 2x Electret microphones (or analog mic modules)
- 2x Raspberry Pi Pico W (or two, for separation of roles)
- 1x Speaker or Buzzer (PWM-compatible)
- Power supply or USB connection
- Jumper wires and breadboard

## Algorithms Used

### Bandpass FIR Filter for Sound Equalizing

A bandpass FIR filter was designed using MATLAB to improve the clarity of the output signal by allowing only a desired range of frequencies to pass through while attenuating others. This helps in shaping the sound quality after noise cancellation.

- Designed using MATLAB
- Exported coefficients are used for real-time filtering
- Applied in the final output stage for enhanced audio quality


### 1. NLMS Adaptive Filtering

Used to dynamically generate anti-noise signals.

- Filter order: 37
- Learning rate: 0.000001
- Delay introduced: 5 samples


### 3. UDP Audio Streaming

Stream .wav or byte audio packets to Pico W over Wi-Fi.

- 8 kHz playback rate
- Pico W operates as a Wi-Fi Access Point
- Uses UDP protocol for fast low-latency transfer

## Real-Time Plotting

Use Arduino Serial Plotter to visualize filtered output:
