// Run with valac -c a.vala b.vala c.vala
using NameSpaceName1;
using NameSpaceName2;

int main() {
	stdout.printf("Answer: %d", NameSpaceName1.ANSWER_TO_EVERYTHING); // Ambiguous reference
	return 0;
}