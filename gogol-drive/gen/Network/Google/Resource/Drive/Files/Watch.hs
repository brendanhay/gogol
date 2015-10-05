{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Drive.Files.Watch
    (
    -- * REST Resource
      FilesWatchResource

    -- * Creating a Request
    , filesWatch'
    , FilesWatch'

    -- * Request Lenses
    , fwQuotaUser
    , fwPrettyPrint
    , fwUserIP
    , fwPayload
    , fwUpdateViewedDate
    , fwKey
    , fwProjection
    , fwAcknowledgeAbuse
    , fwFileId
    , fwOAuthToken
    , fwRevisionId
    , fwFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesWatch@ which the
-- 'FilesWatch'' request conforms to.
type FilesWatchResource =
     "files" :>
       Capture "fileId" Text :>
         "watch" :>
           QueryParam "updateViewedDate" Bool :>
             QueryParam "projection" FilesWatchProjection :>
               QueryParam "acknowledgeAbuse" Bool :>
                 QueryParam "revisionId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Channel :> Post '[JSON] Channel
       :<|>
       "files" :>
         Capture "fileId" Text :>
           "watch" :>
             QueryParam "updateViewedDate" Bool :>
               QueryParam "projection" FilesWatchProjection :>
                 QueryParam "acknowledgeAbuse" Bool :>
                   QueryParam "revisionId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltMedia :>
                                   ReqBody '[JSON] Channel :>
                                     Post '[OctetStream] Body

-- | Subscribe to changes on a file
--
-- /See:/ 'filesWatch'' smart constructor.
data FilesWatch' = FilesWatch'
    { _fwQuotaUser        :: !(Maybe Text)
    , _fwPrettyPrint      :: !Bool
    , _fwUserIP           :: !(Maybe Text)
    , _fwPayload          :: !Channel
    , _fwUpdateViewedDate :: !Bool
    , _fwKey              :: !(Maybe Key)
    , _fwProjection       :: !(Maybe FilesWatchProjection)
    , _fwAcknowledgeAbuse :: !Bool
    , _fwFileId           :: !Text
    , _fwOAuthToken       :: !(Maybe OAuthToken)
    , _fwRevisionId       :: !(Maybe Text)
    , _fwFields           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fwQuotaUser'
--
-- * 'fwPrettyPrint'
--
-- * 'fwUserIP'
--
-- * 'fwPayload'
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
-- * 'fwOAuthToken'
--
-- * 'fwRevisionId'
--
-- * 'fwFields'
filesWatch'
    :: Channel -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> FilesWatch'
filesWatch' pFwPayload_ pFwFileId_ =
    FilesWatch'
    { _fwQuotaUser = Nothing
    , _fwPrettyPrint = True
    , _fwUserIP = Nothing
    , _fwPayload = pFwPayload_
    , _fwUpdateViewedDate = False
    , _fwKey = Nothing
    , _fwProjection = Nothing
    , _fwAcknowledgeAbuse = False
    , _fwFileId = pFwFileId_
    , _fwOAuthToken = Nothing
    , _fwRevisionId = Nothing
    , _fwFields = Nothing
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
fwUserIP :: Lens' FilesWatch' (Maybe Text)
fwUserIP = lens _fwUserIP (\ s a -> s{_fwUserIP = a})

-- | Multipart request metadata.
fwPayload :: Lens' FilesWatch' Channel
fwPayload
  = lens _fwPayload (\ s a -> s{_fwPayload = a})

-- | Deprecated: Use files.update with modifiedDateBehavior=noChange,
-- updateViewedDate=true and an empty request body.
fwUpdateViewedDate :: Lens' FilesWatch' Bool
fwUpdateViewedDate
  = lens _fwUpdateViewedDate
      (\ s a -> s{_fwUpdateViewedDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fwKey :: Lens' FilesWatch' (Maybe Key)
fwKey = lens _fwKey (\ s a -> s{_fwKey = a})

-- | This parameter is deprecated and has no function.
fwProjection :: Lens' FilesWatch' (Maybe FilesWatchProjection)
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
fwOAuthToken :: Lens' FilesWatch' (Maybe OAuthToken)
fwOAuthToken
  = lens _fwOAuthToken (\ s a -> s{_fwOAuthToken = a})

-- | Specifies the Revision ID that should be downloaded. Ignored unless
-- alt=media is specified.
fwRevisionId :: Lens' FilesWatch' (Maybe Text)
fwRevisionId
  = lens _fwRevisionId (\ s a -> s{_fwRevisionId = a})

-- | Selector specifying which fields to include in a partial response.
fwFields :: Lens' FilesWatch' (Maybe Text)
fwFields = lens _fwFields (\ s a -> s{_fwFields = a})

instance GoogleAuth FilesWatch' where
        authKey = fwKey . _Just
        authToken = fwOAuthToken . _Just

instance GoogleRequest FilesWatch' where
        type Rs FilesWatch' = Channel
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesWatch'{..}
          = go _fwFileId (Just _fwUpdateViewedDate)
              _fwProjection
              (Just _fwAcknowledgeAbuse)
              _fwRevisionId
              _fwQuotaUser
              (Just _fwPrettyPrint)
              _fwUserIP
              _fwFields
              _fwKey
              _fwOAuthToken
              (Just AltJSON)
              _fwPayload
          where go :<|> _
                  = clientWithRoute (Proxy :: Proxy FilesWatchResource)
                      r
                      u

instance GoogleRequest (Download FilesWatch') where
        type Rs (Download FilesWatch') = Body
        request = requestWithRoute defReq driveURL
        requestWithRoute r u (Download FilesWatch'{..})
          = go _fwFileId (Just _fwUpdateViewedDate)
              _fwProjection
              (Just _fwAcknowledgeAbuse)
              _fwRevisionId
              _fwQuotaUser
              (Just _fwPrettyPrint)
              _fwUserIP
              _fwFields
              _fwKey
              _fwOAuthToken
              (Just AltMedia)
              _fwPayload
          where _ :<|> go
                  = clientWithRoute (Proxy :: Proxy FilesWatchResource)
                      r
                      u
