from __future__ import print_function
import fileinput

# Test environment

def testSort():
	testSource = ['2', '33', '1', '123', '2' 'sas', 'ab', 'abc', 'b', 'a', '#', '#import', '\n', '\t', ' ']
	out = sortAlphabetically(testSource)
	if (out == '\t\n ##import112322sas33aababcb'):
		print('Sorting test succeed')

def test():
	print ('====== Testing Start ======')
	testSort()
	print ('====== Testing Done ======')


"""
Note that '\n', '\t' and ' ' symbols are first after sorting
"""
# Logic

def sortAlphabetically(strings):
	return ''.join(sorted(strings))

def processInput():
	output = ""
	imports = []
	for line in fileinput.input():
	    if line.startswith('//') or line == '\n' or line == '\t':
	    	if (len(imports)):
	    		output = output + sortAlphabetically(imports)
	    	output = output + line
	    	imports = []
	    else:
			imports.append(line)
	print (output + sortAlphabetically(imports), end='')

processInput()