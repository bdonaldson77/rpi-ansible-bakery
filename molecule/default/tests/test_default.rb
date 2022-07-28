# frozen_string_literal: true

# Molecule managed

if os.linux?
  describe file('/etc/hosts') do
    its('owner') { should eq 'root' }
    its('group') { should eq 'root' }
    its('mode') { should cmp '0644' }
  end
end
