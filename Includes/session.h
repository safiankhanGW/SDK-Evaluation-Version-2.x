#ifndef SESSION_H
#define SESSION_H

typedef size_t Session;

typedef enum Policy_format {
    PF_XML = 0 // Default
} Policy;

typedef enum Analysis_format {
    AF_XML = 0 // Default
} Analysis;

typedef enum SerializationFormat {
    SF_XML = 0, // Default
    SF_SISL = 1
} Serialization;

typedef enum SessionFileTypes {
    SessionConfig,
    SessionInput,
    SessionOutput,
    SessionAnalysis,
    SessionReport,
    SessionImport,
    SessionExport,
    SessionIssueInfo,
    SessionProcessStatus,
    SessionFileErrorMsg
} SessionRegTypes_t;

#endif // SESSION_H
