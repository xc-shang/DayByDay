:collision: draw mel-spectrogram like
![Spectrogram](spectrogram.png)
you need to use:

	librosa.display.spaceshow(librosa.power_to_db(mel_spect, ref=np.max), y_axis='mel', fmax=8000, x_axis='time')
