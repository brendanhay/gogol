{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FirebaseRules.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FirebaseRules.Types.Product where

import           Network.Google.FirebaseRules.Types.Sum
import           Network.Google.Prelude

-- | Position in the \`Source\` content including its line, column number,
-- and an index of the \`File\` in the \`Source\` message. Used for debug
-- purposes.
--
-- /See:/ 'sourcePosition' smart constructor.
data SourcePosition = SourcePosition'
    { _spLine     :: !(Maybe (Textual Int32))
    , _spColumn   :: !(Maybe (Textual Int32))
    , _spFileName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourcePosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spLine'
--
-- * 'spColumn'
--
-- * 'spFileName'
sourcePosition
    :: SourcePosition
sourcePosition =
    SourcePosition'
    { _spLine = Nothing
    , _spColumn = Nothing
    , _spFileName = Nothing
    }

-- | Line number of the source fragment. 1-based.
spLine :: Lens' SourcePosition (Maybe Int32)
spLine
  = lens _spLine (\ s a -> s{_spLine = a}) .
      mapping _Coerce

-- | First column on the source line associated with the source fragment.
spColumn :: Lens' SourcePosition (Maybe Int32)
spColumn
  = lens _spColumn (\ s a -> s{_spColumn = a}) .
      mapping _Coerce

-- | Name of the \`File\`.
spFileName :: Lens' SourcePosition (Maybe Text)
spFileName
  = lens _spFileName (\ s a -> s{_spFileName = a})

instance FromJSON SourcePosition where
        parseJSON
          = withObject "SourcePosition"
              (\ o ->
                 SourcePosition' <$>
                   (o .:? "line") <*> (o .:? "column") <*>
                     (o .:? "fileName"))

instance ToJSON SourcePosition where
        toJSON SourcePosition'{..}
          = object
              (catMaybes
                 [("line" .=) <$> _spLine,
                  ("column" .=) <$> _spColumn,
                  ("fileName" .=) <$> _spFileName])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | The response for FirebaseRulesService.ListReleases.
--
-- /See:/ 'listReleasesResponse' smart constructor.
data ListReleasesResponse = ListReleasesResponse'
    { _lrrNextPageToken :: !(Maybe Text)
    , _lrrReleases      :: !(Maybe [Release])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListReleasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrNextPageToken'
--
-- * 'lrrReleases'
listReleasesResponse
    :: ListReleasesResponse
listReleasesResponse =
    ListReleasesResponse'
    { _lrrNextPageToken = Nothing
    , _lrrReleases = Nothing
    }

-- | The pagination token to retrieve the next page of results. If the value
-- is empty, no further results remain.
lrrNextPageToken :: Lens' ListReleasesResponse (Maybe Text)
lrrNextPageToken
  = lens _lrrNextPageToken
      (\ s a -> s{_lrrNextPageToken = a})

-- | List of \`Release\` instances.
lrrReleases :: Lens' ListReleasesResponse [Release]
lrrReleases
  = lens _lrrReleases (\ s a -> s{_lrrReleases = a}) .
      _Default
      . _Coerce

instance FromJSON ListReleasesResponse where
        parseJSON
          = withObject "ListReleasesResponse"
              (\ o ->
                 ListReleasesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "releases" .!= mempty))

instance ToJSON ListReleasesResponse where
        toJSON ListReleasesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lrrNextPageToken,
                  ("releases" .=) <$> _lrrReleases])

-- | The response for FirebaseRulesService.TestRuleset.
--
-- /See:/ 'testRulesetResponse' smart constructor.
newtype TestRulesetResponse = TestRulesetResponse'
    { _trrIssues :: Maybe [Issue]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestRulesetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trrIssues'
testRulesetResponse
    :: TestRulesetResponse
testRulesetResponse =
    TestRulesetResponse'
    { _trrIssues = Nothing
    }

-- | Syntactic and semantic \`Source\` issues of varying severity. Issues of
-- \`ERROR\` severity will prevent tests from executing.
trrIssues :: Lens' TestRulesetResponse [Issue]
trrIssues
  = lens _trrIssues (\ s a -> s{_trrIssues = a}) .
      _Default
      . _Coerce

instance FromJSON TestRulesetResponse where
        parseJSON
          = withObject "TestRulesetResponse"
              (\ o ->
                 TestRulesetResponse' <$> (o .:? "issues" .!= mempty))

instance ToJSON TestRulesetResponse where
        toJSON TestRulesetResponse'{..}
          = object (catMaybes [("issues" .=) <$> _trrIssues])

-- | \`Release\` is a named reference to a \`Ruleset\`. Once a \`Release\`
-- refers to a \`Ruleset\`, rules-enabled services will be able to enforce
-- the \`Ruleset\`.
--
-- /See:/ 'release' smart constructor.
data Release = Release'
    { _rRulesetName :: !(Maybe Text)
    , _rUpdateTime  :: !(Maybe DateTime')
    , _rName        :: !(Maybe Text)
    , _rCreateTime  :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Release' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rRulesetName'
--
-- * 'rUpdateTime'
--
-- * 'rName'
--
-- * 'rCreateTime'
release
    :: Release
release =
    Release'
    { _rRulesetName = Nothing
    , _rUpdateTime = Nothing
    , _rName = Nothing
    , _rCreateTime = Nothing
    }

-- | Name of the \`Ruleset\` referred to by this \`Release\`. The \`Ruleset\`
-- must exist the \`Release\` to be created.
rRulesetName :: Lens' Release (Maybe Text)
rRulesetName
  = lens _rRulesetName (\ s a -> s{_rRulesetName = a})

-- | Time the release was updated. \'OutputOnly
rUpdateTime :: Lens' Release (Maybe UTCTime)
rUpdateTime
  = lens _rUpdateTime (\ s a -> s{_rUpdateTime = a}) .
      mapping _DateTime

-- | Resource name for the \`Release\`. \`Release\` names may be structured
-- \`app1\/prod\/v2\` or flat \`app1_prod_v2\` which affords developers a
-- great deal of flexibility in mapping the name to the style that best
-- fits their existing development practices. For example, a name could
-- refer to an environment, an app, a version, or some combination of
-- three. In the table below, for the project name \`projects\/foo\`, the
-- following relative release paths show how flat and structured names
-- might be chosen to match a desired development \/ deployment strategy.
-- Use Case | Flat Name | Structured Name
-- -------------|---------------------|---------------- Environments |
-- releases\/qa | releases\/qa Apps | releases\/app1_qa |
-- releases\/app1\/qa Versions | releases\/app1_v2_qa |
-- releases\/app1\/v2\/qa The delimiter between the release name path
-- elements can be almost anything and it should work equally well with the
-- release name list filter, but in many ways the structured paths provide
-- a clearer picture of the relationship between \`Release\` instances.
-- Format: \`projects\/{project_id}\/releases\/{release_id}\`
rName :: Lens' Release (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | Time the release was created. \'OutputOnly
rCreateTime :: Lens' Release (Maybe UTCTime)
rCreateTime
  = lens _rCreateTime (\ s a -> s{_rCreateTime = a}) .
      mapping _DateTime

instance FromJSON Release where
        parseJSON
          = withObject "Release"
              (\ o ->
                 Release' <$>
                   (o .:? "rulesetName") <*> (o .:? "updateTime") <*>
                     (o .:? "name")
                     <*> (o .:? "createTime"))

instance ToJSON Release where
        toJSON Release'{..}
          = object
              (catMaybes
                 [("rulesetName" .=) <$> _rRulesetName,
                  ("updateTime" .=) <$> _rUpdateTime,
                  ("name" .=) <$> _rName,
                  ("createTime" .=) <$> _rCreateTime])

-- | \`Ruleset\` is an immutable copy of \`Source\` with a globally unique
-- identifier and a creation time.
--
-- /See:/ 'ruleset' smart constructor.
data Ruleset = Ruleset'
    { _rulName       :: !(Maybe Text)
    , _rulSource     :: !(Maybe Source)
    , _rulCreateTime :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Ruleset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rulName'
--
-- * 'rulSource'
--
-- * 'rulCreateTime'
ruleset
    :: Ruleset
ruleset =
    Ruleset'
    { _rulName = Nothing
    , _rulSource = Nothing
    , _rulCreateTime = Nothing
    }

-- | Name of the \`Ruleset\`. The ruleset_id is auto generated by the
-- service. Format: \`projects\/{project_id}\/rulesets\/{ruleset_id}\`
-- \'OutputOnly
rulName :: Lens' Ruleset (Maybe Text)
rulName = lens _rulName (\ s a -> s{_rulName = a})

-- | \`Source\` for the \`Ruleset\`.
rulSource :: Lens' Ruleset (Maybe Source)
rulSource
  = lens _rulSource (\ s a -> s{_rulSource = a})

-- | Time the \`Ruleset\` was created. \'OutputOnly
rulCreateTime :: Lens' Ruleset (Maybe UTCTime)
rulCreateTime
  = lens _rulCreateTime
      (\ s a -> s{_rulCreateTime = a})
      . mapping _DateTime

instance FromJSON Ruleset where
        parseJSON
          = withObject "Ruleset"
              (\ o ->
                 Ruleset' <$>
                   (o .:? "name") <*> (o .:? "source") <*>
                     (o .:? "createTime"))

instance ToJSON Ruleset where
        toJSON Ruleset'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _rulName,
                  ("source" .=) <$> _rulSource,
                  ("createTime" .=) <$> _rulCreateTime])

-- | \`Source\` is one or more \`File\` messages comprising a logical set of
-- rules.
--
-- /See:/ 'source' smart constructor.
newtype Source = Source'
    { _sFiles :: Maybe [File]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Source' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sFiles'
source
    :: Source
source =
    Source'
    { _sFiles = Nothing
    }

-- | \`File\` set constituting the \`Source\` bundle.
sFiles :: Lens' Source [File]
sFiles
  = lens _sFiles (\ s a -> s{_sFiles = a}) . _Default .
      _Coerce

instance FromJSON Source where
        parseJSON
          = withObject "Source"
              (\ o -> Source' <$> (o .:? "files" .!= mempty))

instance ToJSON Source where
        toJSON Source'{..}
          = object (catMaybes [("files" .=) <$> _sFiles])

-- | The request for FirebaseRulesService.TestRuleset.
--
-- /See:/ 'testRulesetRequest' smart constructor.
newtype TestRulesetRequest = TestRulesetRequest'
    { _trrSource :: Maybe Source
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestRulesetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trrSource'
testRulesetRequest
    :: TestRulesetRequest
testRulesetRequest =
    TestRulesetRequest'
    { _trrSource = Nothing
    }

-- | \`Source\` to be checked for correctness.
trrSource :: Lens' TestRulesetRequest (Maybe Source)
trrSource
  = lens _trrSource (\ s a -> s{_trrSource = a})

instance FromJSON TestRulesetRequest where
        parseJSON
          = withObject "TestRulesetRequest"
              (\ o -> TestRulesetRequest' <$> (o .:? "source"))

instance ToJSON TestRulesetRequest where
        toJSON TestRulesetRequest'{..}
          = object (catMaybes [("source" .=) <$> _trrSource])

-- | \`File\` containing source content.
--
-- /See:/ 'file' smart constructor.
data File = File'
    { _fFingerprint :: !(Maybe Bytes)
    , _fContent     :: !(Maybe Text)
    , _fName        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'File' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fFingerprint'
--
-- * 'fContent'
--
-- * 'fName'
file
    :: File
file =
    File'
    { _fFingerprint = Nothing
    , _fContent = Nothing
    , _fName = Nothing
    }

-- | Fingerprint (e.g. github sha) associated with the \`File\`.
fFingerprint :: Lens' File (Maybe ByteString)
fFingerprint
  = lens _fFingerprint (\ s a -> s{_fFingerprint = a})
      . mapping _Bytes

-- | Textual Content.
fContent :: Lens' File (Maybe Text)
fContent = lens _fContent (\ s a -> s{_fContent = a})

-- | File name.
fName :: Lens' File (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

instance FromJSON File where
        parseJSON
          = withObject "File"
              (\ o ->
                 File' <$>
                   (o .:? "fingerprint") <*> (o .:? "content") <*>
                     (o .:? "name"))

instance ToJSON File where
        toJSON File'{..}
          = object
              (catMaybes
                 [("fingerprint" .=) <$> _fFingerprint,
                  ("content" .=) <$> _fContent,
                  ("name" .=) <$> _fName])

-- | The response for FirebaseRulesService.ListRulesets
--
-- /See:/ 'listRulesetsResponse' smart constructor.
data ListRulesetsResponse = ListRulesetsResponse'
    { _lRulesets      :: !(Maybe [Ruleset])
    , _lNextPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListRulesetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lRulesets'
--
-- * 'lNextPageToken'
listRulesetsResponse
    :: ListRulesetsResponse
listRulesetsResponse =
    ListRulesetsResponse'
    { _lRulesets = Nothing
    , _lNextPageToken = Nothing
    }

-- | List of \`Ruleset\` instances.
lRulesets :: Lens' ListRulesetsResponse [Ruleset]
lRulesets
  = lens _lRulesets (\ s a -> s{_lRulesets = a}) .
      _Default
      . _Coerce

-- | The pagination token to retrieve the next page of results. If the value
-- is empty, no further results remain.
lNextPageToken :: Lens' ListRulesetsResponse (Maybe Text)
lNextPageToken
  = lens _lNextPageToken
      (\ s a -> s{_lNextPageToken = a})

instance FromJSON ListRulesetsResponse where
        parseJSON
          = withObject "ListRulesetsResponse"
              (\ o ->
                 ListRulesetsResponse' <$>
                   (o .:? "rulesets" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListRulesetsResponse where
        toJSON ListRulesetsResponse'{..}
          = object
              (catMaybes
                 [("rulesets" .=) <$> _lRulesets,
                  ("nextPageToken" .=) <$> _lNextPageToken])

-- | Issues include warnings, errors, and deprecation notices.
--
-- /See:/ 'issue' smart constructor.
data Issue = Issue'
    { _iSourcePosition :: !(Maybe SourcePosition)
    , _iSeverity       :: !(Maybe IssueSeverity)
    , _iDescription    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Issue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iSourcePosition'
--
-- * 'iSeverity'
--
-- * 'iDescription'
issue
    :: Issue
issue =
    Issue'
    { _iSourcePosition = Nothing
    , _iSeverity = Nothing
    , _iDescription = Nothing
    }

-- | Position of the issue in the \`Source\`.
iSourcePosition :: Lens' Issue (Maybe SourcePosition)
iSourcePosition
  = lens _iSourcePosition
      (\ s a -> s{_iSourcePosition = a})

-- | The severity of the issue.
iSeverity :: Lens' Issue (Maybe IssueSeverity)
iSeverity
  = lens _iSeverity (\ s a -> s{_iSeverity = a})

-- | Short error description.
iDescription :: Lens' Issue (Maybe Text)
iDescription
  = lens _iDescription (\ s a -> s{_iDescription = a})

instance FromJSON Issue where
        parseJSON
          = withObject "Issue"
              (\ o ->
                 Issue' <$>
                   (o .:? "sourcePosition") <*> (o .:? "severity") <*>
                     (o .:? "description"))

instance ToJSON Issue where
        toJSON Issue'{..}
          = object
              (catMaybes
                 [("sourcePosition" .=) <$> _iSourcePosition,
                  ("severity" .=) <$> _iSeverity,
                  ("description" .=) <$> _iDescription])
