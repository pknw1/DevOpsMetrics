﻿using DevOpsMetrics.Service.Models.Common;

namespace DevOpsMetrics.Service.Models.GitHub
{
    public class GitHubPRCommit
    {
        public string sha { get; set; }
        public Committer committer { get; set; }
    }
}