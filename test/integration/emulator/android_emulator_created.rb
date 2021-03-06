home = os.darwin? ? '/Users/random' : '/home/random'

describe directory("#{home}/.android") do
  it { should exist }
  it { should be_owned_by 'random' }
end

describe directory("#{home}/.android/avd") do
  it { should exist }
  it { should be_owned_by 'random' }
end

describe directory("#{home}/.android/avd/android-23-armeabi-v7a.avd") do
  it { should exist }
  it { should be_owned_by 'random' }
end

describe file("#{home}/.android/avd/android-23-armeabi-v7a.avd/config.ini") do
  it { should exist }
  it { should be_owned_by 'random' }
  its('mode') { should cmp '0644' }
  its('content') { should match(/hw.ramSize=2048/) }
  its('content') { should match(/vm.heapSize=256/) }
  its('content') { should match(/sdcard.size=256M/) }
  its('content') { should match(/tag.id=google_apis/) }
  its('content') { should match(/disk.dataPartition.size=2048M/) }
end
