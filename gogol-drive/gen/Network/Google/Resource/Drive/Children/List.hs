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
-- Module      : Network.Google.Resource.Drive.Children.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a folder\'s children.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChildrenList@.
module Network.Google.Resource.Drive.Children.List
    (
    -- * REST Resource
      ChildrenListResource

    -- * Creating a Request
    , childrenList'
    , ChildrenList'

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clOrderBy
    , clUserIP
    , clFolderId
    , clQ
    , clKey
    , clPageToken
    , clOAuthToken
    , clMaxResults
    , clFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChildrenList@ method which the
-- 'ChildrenList'' request conforms to.
type ChildrenListResource =
     "files" :>
       Capture "folderId" Text :>
         "children" :>
           QueryParam "orderBy" Text :>
             QueryParam "q" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             Header "Authorization" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] ChildList

-- | Lists a folder\'s children.
--
-- /See:/ 'childrenList'' smart constructor.
data ChildrenList' = ChildrenList'
    { _clQuotaUser   :: !(Maybe Text)
    , _clPrettyPrint :: !Bool
    , _clOrderBy     :: !(Maybe Text)
    , _clUserIP      :: !(Maybe Text)
    , _clFolderId    :: !Text
    , _clQ           :: !(Maybe Text)
    , _clKey         :: !(Maybe AuthKey)
    , _clPageToken   :: !(Maybe Text)
    , _clOAuthToken  :: !(Maybe OAuthToken)
    , _clMaxResults  :: !Int32
    , _clFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clOrderBy'
--
-- * 'clUserIP'
--
-- * 'clFolderId'
--
-- * 'clQ'
--
-- * 'clKey'
--
-- * 'clPageToken'
--
-- * 'clOAuthToken'
--
-- * 'clMaxResults'
--
-- * 'clFields'
childrenList'
    :: Text -- ^ 'folderId'
    -> ChildrenList'
childrenList' pClFolderId_ =
    ChildrenList'
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clOrderBy = Nothing
    , _clUserIP = Nothing
    , _clFolderId = pClFolderId_
    , _clQ = Nothing
    , _clKey = Nothing
    , _clPageToken = Nothing
    , _clOAuthToken = Nothing
    , _clMaxResults = 100
    , _clFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' ChildrenList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' ChildrenList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | A comma-separated list of sort keys. Valid keys are \'createdDate\',
-- \'folder\', \'lastViewedByMeDate\', \'modifiedByMeDate\',
-- \'modifiedDate\', \'quotaBytesUsed\', \'recency\', \'sharedWithMeDate\',
-- \'starred\', and \'title\'. Each key sorts ascending by default, but may
-- be reversed with the \'desc\' modifier. Example usage:
-- ?orderBy=folder,modifiedDate desc,title. Please note that there is a
-- current limitation for users with approximately one million files in
-- which the requested sort order is ignored.
clOrderBy :: Lens' ChildrenList' (Maybe Text)
clOrderBy
  = lens _clOrderBy (\ s a -> s{_clOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIP :: Lens' ChildrenList' (Maybe Text)
clUserIP = lens _clUserIP (\ s a -> s{_clUserIP = a})

-- | The ID of the folder.
clFolderId :: Lens' ChildrenList' Text
clFolderId
  = lens _clFolderId (\ s a -> s{_clFolderId = a})

-- | Query string for searching children.
clQ :: Lens' ChildrenList' (Maybe Text)
clQ = lens _clQ (\ s a -> s{_clQ = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' ChildrenList' (Maybe AuthKey)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | Page token for children.
clPageToken :: Lens' ChildrenList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | OAuth 2.0 token for the current user.
clOAuthToken :: Lens' ChildrenList' (Maybe OAuthToken)
clOAuthToken
  = lens _clOAuthToken (\ s a -> s{_clOAuthToken = a})

-- | Maximum number of children to return.
clMaxResults :: Lens' ChildrenList' Int32
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' ChildrenList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

instance GoogleAuth ChildrenList' where
        _AuthKey = clKey . _Just
        _AuthToken = clOAuthToken . _Just

instance GoogleRequest ChildrenList' where
        type Rs ChildrenList' = ChildList
        request = requestWith driveRequest
        requestWith rq ChildrenList'{..}
          = go _clFolderId _clOrderBy _clQ _clPageToken
              (Just _clMaxResults)
              _clQuotaUser
              (Just _clPrettyPrint)
              _clUserIP
              _clFields
              _clKey
              _clOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ChildrenListResource)
                      rq
