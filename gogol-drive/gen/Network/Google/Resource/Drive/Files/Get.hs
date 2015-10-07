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
-- Module      : Network.Google.Resource.Drive.Files.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a file\'s metadata by ID.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesGet@.
module Network.Google.Resource.Drive.Files.Get
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
    , fgUpdateViewedDate
    , fgKey
    , fgProjection
    , fgAcknowledgeAbuse
    , fgFileId
    , fgOAuthToken
    , fgRevisionId
    , fgFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesGet@ method which the
-- 'FilesGet'' request conforms to.
type FilesGetResource =
     "files" :>
       Capture "fileId" Text :>
         QueryParam "updateViewedDate" Bool :>
           QueryParam "projection" FilesGetProjection :>
             QueryParam "acknowledgeAbuse" Bool :>
               QueryParam "revisionId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] File
       :<|>
       "files" :>
         Capture "fileId" Text :>
           QueryParam "updateViewedDate" Bool :>
             QueryParam "projection" FilesGetProjection :>
               QueryParam "acknowledgeAbuse" Bool :>
                 QueryParam "revisionId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltMedia :>
                                 Get '[OctetStream] Stream

-- | Gets a file\'s metadata by ID.
--
-- /See:/ 'filesGet'' smart constructor.
data FilesGet' = FilesGet'
    { _fgQuotaUser        :: !(Maybe Text)
    , _fgPrettyPrint      :: !Bool
    , _fgUserIP           :: !(Maybe Text)
    , _fgUpdateViewedDate :: !Bool
    , _fgKey              :: !(Maybe AuthKey)
    , _fgProjection       :: !(Maybe FilesGetProjection)
    , _fgAcknowledgeAbuse :: !Bool
    , _fgFileId           :: !Text
    , _fgOAuthToken       :: !(Maybe OAuthToken)
    , _fgRevisionId       :: !(Maybe Text)
    , _fgFields           :: !(Maybe Text)
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
-- * 'fgUpdateViewedDate'
--
-- * 'fgKey'
--
-- * 'fgProjection'
--
-- * 'fgAcknowledgeAbuse'
--
-- * 'fgFileId'
--
-- * 'fgOAuthToken'
--
-- * 'fgRevisionId'
--
-- * 'fgFields'
filesGet'
    :: Text -- ^ 'fileId'
    -> FilesGet'
filesGet' pFgFileId_ =
    FilesGet'
    { _fgQuotaUser = Nothing
    , _fgPrettyPrint = True
    , _fgUserIP = Nothing
    , _fgUpdateViewedDate = False
    , _fgKey = Nothing
    , _fgProjection = Nothing
    , _fgAcknowledgeAbuse = False
    , _fgFileId = pFgFileId_
    , _fgOAuthToken = Nothing
    , _fgRevisionId = Nothing
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

-- | Deprecated: Use files.update with modifiedDateBehavior=noChange,
-- updateViewedDate=true and an empty request body.
fgUpdateViewedDate :: Lens' FilesGet' Bool
fgUpdateViewedDate
  = lens _fgUpdateViewedDate
      (\ s a -> s{_fgUpdateViewedDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fgKey :: Lens' FilesGet' (Maybe AuthKey)
fgKey = lens _fgKey (\ s a -> s{_fgKey = a})

-- | This parameter is deprecated and has no function.
fgProjection :: Lens' FilesGet' (Maybe FilesGetProjection)
fgProjection
  = lens _fgProjection (\ s a -> s{_fgProjection = a})

-- | Whether the user is acknowledging the risk of downloading known malware
-- or other abusive files.
fgAcknowledgeAbuse :: Lens' FilesGet' Bool
fgAcknowledgeAbuse
  = lens _fgAcknowledgeAbuse
      (\ s a -> s{_fgAcknowledgeAbuse = a})

-- | The ID for the file in question.
fgFileId :: Lens' FilesGet' Text
fgFileId = lens _fgFileId (\ s a -> s{_fgFileId = a})

-- | OAuth 2.0 token for the current user.
fgOAuthToken :: Lens' FilesGet' (Maybe OAuthToken)
fgOAuthToken
  = lens _fgOAuthToken (\ s a -> s{_fgOAuthToken = a})

-- | Specifies the Revision ID that should be downloaded. Ignored unless
-- alt=media is specified.
fgRevisionId :: Lens' FilesGet' (Maybe Text)
fgRevisionId
  = lens _fgRevisionId (\ s a -> s{_fgRevisionId = a})

-- | Selector specifying which fields to include in a partial response.
fgFields :: Lens' FilesGet' (Maybe Text)
fgFields = lens _fgFields (\ s a -> s{_fgFields = a})

instance GoogleAuth FilesGet' where
        _AuthKey = fgKey . _Just
        _AuthToken = fgOAuthToken . _Just

instance GoogleRequest FilesGet' where
        type Rs FilesGet' = File
        request = requestWith driveRequest
        requestWith rq FilesGet'{..}
          = go _fgFileId (Just _fgUpdateViewedDate)
              _fgProjection
              (Just _fgAcknowledgeAbuse)
              _fgRevisionId
              _fgQuotaUser
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
        request = requestWith driveRequest
        requestWith rq (MediaDownload FilesGet'{..})
          = go _fgFileId (Just _fgUpdateViewedDate)
              _fgProjection
              (Just _fgAcknowledgeAbuse)
              _fgRevisionId
              _fgQuotaUser
              (Just _fgPrettyPrint)
              _fgUserIP
              _fgFields
              _fgKey
              _fgOAuthToken
              (Just AltMedia)
          where _ :<|> go
                  = clientBuild (Proxy :: Proxy FilesGetResource) rq
