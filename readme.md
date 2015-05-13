# MFE - The Maude Formal Environment

The *Maude Formal Environment* (MFE) is an executable and highly extensible software infrastructure within which a user can interact with several tools to mechanically verify properties of [Maude](http://maude.cs.illinois.edu) specifications. In MFE, tools can interoperate to discharge proof obligations of different nature without switching between different tool environments. The integration of different tools inside MFE's common environment presents the user with a consistent user interface, a mechanism to keep track of pending proof obligations, and allows the execution of several instances of each tool, among other features.

## Where to Start?

### Installation

The Maude Formal Environment can be used both on the official distribution of [Maude](http://maude.cs.illinois.edu) (Maude 2.7) or on the Maude++ extended version. The termination tool and sufficient completion tool require internal hooks not available in the official distribution, and therefore these tools will not be available inside the MFE if the official version of Maude is used. The rest of the tools will work normally on both versions of Maude.
