{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Files.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a report file by its report ID and file ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFilesGet@.
module DFAReporting.Files.Get
    (
    -- * REST Resource
      FilesGetAPI

    -- * Creating a Request
    , filesGet
    , FilesGet

    -- * Request Lenses
    , fgQuotaUser
    , fgPrettyPrint
    , fgUserIp
    , fgReportId
    , fgKey
    , fgFileId
    , fgOauthToken
    , fgFields
    , fgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFilesGet@ which the
-- 'FilesGet' request conforms to.
type FilesGetAPI =
     "reports" :>
       Capture "reportId" Int64 :>
         "files" :> Capture "fileId" Int64 :> Get '[JSON] File

-- | Retrieves a report file by its report ID and file ID.
--
-- /See:/ 'filesGet' smart constructor.
data FilesGet = FilesGet
    { _fgQuotaUser   :: !(Maybe Text)
    , _fgPrettyPrint :: !Bool
    , _fgUserIp      :: !(Maybe Text)
    , _fgReportId    :: !Int64
    , _fgKey         :: !(Maybe Text)
    , _fgFileId      :: !Int64
    , _fgOauthToken  :: !(Maybe Text)
    , _fgFields      :: !(Maybe Text)
    , _fgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgQuotaUser'
--
-- * 'fgPrettyPrint'
--
-- * 'fgUserIp'
--
-- * 'fgReportId'
--
-- * 'fgKey'
--
-- * 'fgFileId'
--
-- * 'fgOauthToken'
--
-- * 'fgFields'
--
-- * 'fgAlt'
filesGet
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'fileId'
    -> FilesGet
filesGet pFgReportId_ pFgFileId_ =
    FilesGet
    { _fgQuotaUser = Nothing
    , _fgPrettyPrint = True
    , _fgUserIp = Nothing
    , _fgReportId = pFgReportId_
    , _fgKey = Nothing
    , _fgFileId = pFgFileId_
    , _fgOauthToken = Nothing
    , _fgFields = Nothing
    , _fgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fgQuotaUser :: Lens' FilesGet' (Maybe Text)
fgQuotaUser
  = lens _fgQuotaUser (\ s a -> s{_fgQuotaUser = a})

-- | Returns response with indentations and line breaks.
fgPrettyPrint :: Lens' FilesGet' Bool
fgPrettyPrint
  = lens _fgPrettyPrint
      (\ s a -> s{_fgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fgUserIp :: Lens' FilesGet' (Maybe Text)
fgUserIp = lens _fgUserIp (\ s a -> s{_fgUserIp = a})

-- | The ID of the report.
fgReportId :: Lens' FilesGet' Int64
fgReportId
  = lens _fgReportId (\ s a -> s{_fgReportId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fgKey :: Lens' FilesGet' (Maybe Text)
fgKey = lens _fgKey (\ s a -> s{_fgKey = a})

-- | The ID of the report file.
fgFileId :: Lens' FilesGet' Int64
fgFileId = lens _fgFileId (\ s a -> s{_fgFileId = a})

-- | OAuth 2.0 token for the current user.
fgOauthToken :: Lens' FilesGet' (Maybe Text)
fgOauthToken
  = lens _fgOauthToken (\ s a -> s{_fgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fgFields :: Lens' FilesGet' (Maybe Text)
fgFields = lens _fgFields (\ s a -> s{_fgFields = a})

-- | Data format for the response.
fgAlt :: Lens' FilesGet' Text
fgAlt = lens _fgAlt (\ s a -> s{_fgAlt = a})

instance GoogleRequest FilesGet' where
        type Rs FilesGet' = File
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FilesGet{..}
          = go _fgQuotaUser _fgPrettyPrint _fgUserIp
              _fgReportId
              _fgKey
              _fgFileId
              _fgOauthToken
              _fgFields
              _fgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy FilesGetAPI) r u
