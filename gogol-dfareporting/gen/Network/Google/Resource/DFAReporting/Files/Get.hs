{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
module Network.Google.Resource.DFAReporting.Files.Get
    (
    -- * REST Resource
      FilesGetResource

    -- * Creating a Request
    , filesGet'
    , FilesGet'

    -- * Request Lenses
    , fgQuotaUser
    , fgPrettyPrint
    , fgUserIP
    , fgReportId
    , fgKey
    , fgFileId
    , fgOAuthToken
    , fgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFilesGet@ method which the
-- 'FilesGet'' request conforms to.
type FilesGetResource =
     "reports" :>
       Capture "reportId" Int64 :>
         "files" :>
           Capture "fileId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] File
       :<|>
       "reports" :>
         Capture "reportId" Int64 :>
           "files" :>
             Capture "fileId" Int64 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltMedia :>
                             Get '[OctetStream] Stream

-- | Retrieves a report file by its report ID and file ID.
--
-- /See:/ 'filesGet'' smart constructor.
data FilesGet' = FilesGet'
    { _fgQuotaUser   :: !(Maybe Text)
    , _fgPrettyPrint :: !Bool
    , _fgUserIP      :: !(Maybe Text)
    , _fgReportId    :: !Int64
    , _fgKey         :: !(Maybe AuthKey)
    , _fgFileId      :: !Int64
    , _fgOAuthToken  :: !(Maybe OAuthToken)
    , _fgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgQuotaUser'
--
-- * 'fgPrettyPrint'
--
-- * 'fgUserIP'
--
-- * 'fgReportId'
--
-- * 'fgKey'
--
-- * 'fgFileId'
--
-- * 'fgOAuthToken'
--
-- * 'fgFields'
filesGet'
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'fileId'
    -> FilesGet'
filesGet' pFgReportId_ pFgFileId_ =
    FilesGet'
    { _fgQuotaUser = Nothing
    , _fgPrettyPrint = True
    , _fgUserIP = Nothing
    , _fgReportId = pFgReportId_
    , _fgKey = Nothing
    , _fgFileId = pFgFileId_
    , _fgOAuthToken = Nothing
    , _fgFields = Nothing
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
fgUserIP :: Lens' FilesGet' (Maybe Text)
fgUserIP = lens _fgUserIP (\ s a -> s{_fgUserIP = a})

-- | The ID of the report.
fgReportId :: Lens' FilesGet' Int64
fgReportId
  = lens _fgReportId (\ s a -> s{_fgReportId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fgKey :: Lens' FilesGet' (Maybe AuthKey)
fgKey = lens _fgKey (\ s a -> s{_fgKey = a})

-- | The ID of the report file.
fgFileId :: Lens' FilesGet' Int64
fgFileId = lens _fgFileId (\ s a -> s{_fgFileId = a})

-- | OAuth 2.0 token for the current user.
fgOAuthToken :: Lens' FilesGet' (Maybe OAuthToken)
fgOAuthToken
  = lens _fgOAuthToken (\ s a -> s{_fgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fgFields :: Lens' FilesGet' (Maybe Text)
fgFields = lens _fgFields (\ s a -> s{_fgFields = a})

instance GoogleAuth FilesGet' where
        _AuthKey = fgKey . _Just
        _AuthToken = fgOAuthToken . _Just

instance GoogleRequest FilesGet' where
        type Rs FilesGet' = File
        request = requestWith dFAReportingRequest
        requestWith rq FilesGet'{..}
          = go _fgReportId _fgFileId _fgQuotaUser
              (Just _fgPrettyPrint)
              _fgUserIP
              _fgFields
              _fgKey
              _fgOAuthToken
              (Just AltJSON)
          where go :<|> _
                  = clientBuild (Proxy :: Proxy FilesGetResource) rq

instance GoogleRequest (MediaDownload FilesGet')
         where
        type Rs (MediaDownload FilesGet') = Stream
        request = requestWith dFAReportingRequest
        requestWith rq (MediaDownload FilesGet'{..})
          = go _fgReportId _fgFileId _fgQuotaUser
              (Just _fgPrettyPrint)
              _fgUserIP
              _fgFields
              _fgKey
              _fgOAuthToken
              (Just AltMedia)
          where _ :<|> go
                  = clientBuild (Proxy :: Proxy FilesGetResource) rq
