import pyaudio
import numpy
import matplotlib.pyplot as plt

p = pyaudio.PyAudio()

stream = p.open(format=pyaudio.paInt16,
                channels=2,
                rate=44100,
                input=True,
                frames_per_buffer=1024)

print("* recording")

frames = []

for i in range(0, int(44100 / 1024 * 6)):
    data = stream.read(1024)
    frames.append(data)
frames = ''.join(frames)
    
print("* done recording")

stream.stop_stream()
stream.close()
p.terminate()

amplitude = numpy.fromstring(frames, numpy.int16)
amplitude = [numpy.absolute(a) for a in amplitude]
n = 1000
amplitudefilt = [sum(amplitude[i:i+n])/n for i in range(len(amplitude)-n)]

plt.plot(amplitude[int(len(amplitude)/6):],'r')
plt.plot(amplitudefilt[int(len(amplitude)/6):],'g')
plt.ylabel('some numbers')
plt.show()

