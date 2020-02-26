#!/bin/bash
echo 'usage: ./makecomponents.sh number_of_components'
echo 'dumps a whole mess of components in ComponentLibrary'

[[ ! "$1" -eq "" ]] || { exit 0; }

filename='Components.cs'

echo 'using Microsoft.AspNetCore.Components;' > $filename
echo 'namespace ComponentLibrary {' >> $filename
echo 'public static class EnsureInclusion { public static void Touch() {} }' >> $filename
for ((i = 1; i <=$1; i++)); do
	echo "public class TestComponent${i} : ComponentBase {}" >> $filename;
done

echo '}' >> $filename
