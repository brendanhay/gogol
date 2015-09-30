{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Files.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Subscribe to changes on a file
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesWatch@.
module Drive.Files.Watch
    (
    -- * REST Resource
      FilesWatchAPI

    -- * Creating a Request
    , filesWatch
    , FilesWatch

    -- * Request Lenses
    , fwQuotaUser
    , fwPrettyPrint
    , fwUserIp
    , fwUpdateViewedDate
    , fwKey
    , fwProjection
    , fwAcknowledgeAbuse
    , fwFileId
    , fwOauthToken
    , fwRevisionId
    , fwFields
    , fwAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesWatch@ which the
-- 'FilesWatch' request conforms to.
type FilesWatchAPI =
     "files" :>
       Capture "fileId" Text :>
         "watch" :>
           QueryParam "updateViewedDate" Bool :>
             QueryParam "projection" Text :>
               QueryParam "acknowledgeAbuse" Bool :>
                 QueryParam "revisionId" Text :> Post '[JSON] Channel

-- | Subscribe to changes on a file
--
-- /See:/ 'filesWatch' smart constructor.
data FilesWatch = FilesWatch
    { _fwQuotaUser        :: !(Maybe Text)
    , _fwPrettyPrint      :: !Bool
    , _fwUserIp           :: !(Maybe Text)
    , _fwUpdateViewedDate :: !Bool
    , _fwKey              :: !(Maybe Text)
    , _fwProjection       :: !(Maybe Text)
    , _fwAcknowledgeAbuse :: !Bool
    , _fwFileId           :: !Text
    , _fwOauthToken       :: !(Maybe Text)
    , _fwRevisionId       :: !(Maybe Text)
    , _fwFields           :: !(Maybe Text)
    , _fwAlt              :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fwQuotaUser'
--
-- * 'fwPrettyPrint'
--
-- * 'fwUserIp'
--
-- * 'fwUpdateViewedDate'
--
-- * 'fwKey'
--
-- * 'fwProjection'
--
-- * 'fwAcknowledgeAbuse'
--
-- * 'fwFileId'
--
-- * 'fwOauthToken'
--
-- * 'fwRevisionId'
--
-- * 'fwFields'
--
-- * 'fwAlt'
filesWatch
    :: Text -- ^ 'fileId'
    -> FilesWatch
filesWatch pFwFileId_ =
    FilesWatch
    { _fwQuotaUser = Nothing
    , _fwPrettyPrint = True
    , _fwUserIp = Nothing
    , _fwUpdateViewedDate = False
    , _fwKey = Nothing
    , _fwProjection = Nothing
    , _fwAcknowledgeAbuse = False
    , _fwFileId = pFwFileId_
    , _fwOauthToken = Nothing
    , _fwRevisionId = Nothing
    , _fwFields = Nothing
    , _fwAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fwQuotaUser :: Lens' FilesWatch' (Maybe Text)
fwQuotaUser
  = lens _fwQuotaUser (\ s a -> s{_fwQuotaUser = a})

-- | Returns response with indentations and line breaks.
fwPrettyPrint :: Lens' FilesWatch' Bool
fwPrettyPrint
  = lens _fwPrettyPrint
      (\ s a -> s{_fwPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fwUserIp :: Lens' FilesWatch' (Maybe Text)
fwUserIp = lens _fwUserIp (\ s a -> s{_fwUserIp = a})

-- | Deprecated: Use files.update with modifiedDateBehavior=noChange,
-- updateViewedDate=true and an empty request body.
fwUpdateViewedDate :: Lens' FilesWatch' Bool
fwUpdateViewedDate
  = lens _fwUpdateViewedDate
      (\ s a -> s{_fwUpdateViewedDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fwKey :: Lens' FilesWatch' (Maybe Text)
fwKey = lens _fwKey (\ s a -> s{_fwKey = a})

-- | This parameter is deprecated and has no function.
fwProjection :: Lens' FilesWatch' (Maybe Text)
fwProjection
  = lens _fwProjection (\ s a -> s{_fwProjection = a})

-- | Whether the user is acknowledging the risk of downloading known malware
-- or other abusive files.
fwAcknowledgeAbuse :: Lens' FilesWatch' Bool
fwAcknowledgeAbuse
  = lens _fwAcknowledgeAbuse
      (\ s a -> s{_fwAcknowledgeAbuse = a})

-- | The ID for the file in question.
fwFileId :: Lens' FilesWatch' Text
fwFileId = lens _fwFileId (\ s a -> s{_fwFileId = a})

-- | OAuth 2.0 token for the current user.
fwOauthToken :: Lens' FilesWatch' (Maybe Text)
fwOauthToken
  = lens _fwOauthToken (\ s a -> s{_fwOauthToken = a})

-- | Specifies the Revision ID that should be downloaded. Ignored unless
-- alt=media is specified.
fwRevisionId :: Lens' FilesWatch' (Maybe Text)
fwRevisionId
  = lens _fwRevisionId (\ s a -> s{_fwRevisionId = a})

-- | Selector specifying which fields to include in a partial response.
fwFields :: Lens' FilesWatch' (Maybe Text)
fwFields = lens _fwFields (\ s a -> s{_fwFields = a})

-- | Data format for the response.
fwAlt :: Lens' FilesWatch' Text
fwAlt = lens _fwAlt (\ s a -> s{_fwAlt = a})

instance GoogleRequest FilesWatch' where
        type Rs FilesWatch' = Channel
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesWatch{..}
          = go _fwQuotaUser _fwPrettyPrint _fwUserIp
              (Just _fwUpdateViewedDate)
              _fwKey
              _fwProjection
              (Just _fwAcknowledgeAbuse)
              _fwFileId
              _fwOauthToken
              _fwRevisionId
              _fwFields
              _fwAlt
          where go
                  = clientWithRoute (Proxy :: Proxy FilesWatchAPI) r u
