import subprocess
from pathlib import Path

def run_aprove(
    aprove_jar: str,
    trs_file: str,
    profile: str = "plain",
    output_file: str | None = None,
    error_file: str | None = None
):
    """
    Run AProVE from Python and capture/redirect output.

    Returns:
        (stdout_str, stderr_str, exit_code)
    """

    cmd = [
        "java", "-ea",
        "-jar", aprove_jar,
        "-p", profile,
        trs_file
    ]

    # Stream handling
    stdout_target = subprocess.PIPE
    stderr_target = subprocess.PIPE

    # Start process
    process = subprocess.Popen(
        cmd,
        stdout=stdout_target,
        stderr=stderr_target,
        text=True
    )

    stdout, stderr = process.communicate()

    # Write to files if requested
    if output_file:
        Path(output_file).write_text(stdout if stdout else "")

    if error_file:
        Path(error_file).write_text(stderr if stderr else "")

    return stdout, stderr, process.returncode

run_aprove(
    "aprove.jar",
    "aprove_input.trs",
    output_file="aprove_output.txt",
    error_file="aprove_errors.txt"
)