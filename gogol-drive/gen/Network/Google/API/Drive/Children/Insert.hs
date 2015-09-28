{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Children.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a file into a folder.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.children.insert@.
module Network.Google.API.Drive.Children.Insert
    (
    -- * REST Resource
      ChildrenInsertAPI

    -- * Creating a Request
    , childrenInsert'
    , ChildrenInsert'

    -- * Request Lenses
    , ciiQuotaUser
    , ciiPrettyPrint
    , ciiUserIp
    , ciiFolderId
    , ciiKey
    , ciiOauthToken
    , ciiFields
    , ciiAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.children.insert which the
-- 'ChildrenInsert'' request conforms to.
type ChildrenInsertAPI =
     "files" :>
       Capture "folderId" Text :>
         "children" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ChildReference

-- | Inserts a file into a folder.
--
-- /See:/ 'childrenInsert'' smart constructor.
data ChildrenInsert' = ChildrenInsert'
    { _ciiQuotaUser   :: !(Maybe Text)
    , _ciiPrettyPrint :: !Bool
    , _ciiUserIp      :: !(Maybe Text)
    , _ciiFolderId    :: !Text
    , _ciiKey         :: !(Maybe Text)
    , _ciiOauthToken  :: !(Maybe Text)
    , _ciiFields      :: !(Maybe Text)
    , _ciiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciiQuotaUser'
--
-- * 'ciiPrettyPrint'
--
-- * 'ciiUserIp'
--
-- * 'ciiFolderId'
--
-- * 'ciiKey'
--
-- * 'ciiOauthToken'
--
-- * 'ciiFields'
--
-- * 'ciiAlt'
childrenInsert'
    :: Text -- ^ 'folderId'
    -> ChildrenInsert'
childrenInsert' pCiiFolderId_ =
    ChildrenInsert'
    { _ciiQuotaUser = Nothing
    , _ciiPrettyPrint = True
    , _ciiUserIp = Nothing
    , _ciiFolderId = pCiiFolderId_
    , _ciiKey = Nothing
    , _ciiOauthToken = Nothing
    , _ciiFields = Nothing
    , _ciiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciiQuotaUser :: Lens' ChildrenInsert' (Maybe Text)
ciiQuotaUser
  = lens _ciiQuotaUser (\ s a -> s{_ciiQuotaUser = a})

-- | Returns response with indentations and line breaks.
ciiPrettyPrint :: Lens' ChildrenInsert' Bool
ciiPrettyPrint
  = lens _ciiPrettyPrint
      (\ s a -> s{_ciiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciiUserIp :: Lens' ChildrenInsert' (Maybe Text)
ciiUserIp
  = lens _ciiUserIp (\ s a -> s{_ciiUserIp = a})

-- | The ID of the folder.
ciiFolderId :: Lens' ChildrenInsert' Text
ciiFolderId
  = lens _ciiFolderId (\ s a -> s{_ciiFolderId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciiKey :: Lens' ChildrenInsert' (Maybe Text)
ciiKey = lens _ciiKey (\ s a -> s{_ciiKey = a})

-- | OAuth 2.0 token for the current user.
ciiOauthToken :: Lens' ChildrenInsert' (Maybe Text)
ciiOauthToken
  = lens _ciiOauthToken
      (\ s a -> s{_ciiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciiFields :: Lens' ChildrenInsert' (Maybe Text)
ciiFields
  = lens _ciiFields (\ s a -> s{_ciiFields = a})

-- | Data format for the response.
ciiAlt :: Lens' ChildrenInsert' Alt
ciiAlt = lens _ciiAlt (\ s a -> s{_ciiAlt = a})

instance GoogleRequest ChildrenInsert' where
        type Rs ChildrenInsert' = ChildReference
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChildrenInsert'{..}
          = go _ciiQuotaUser (Just _ciiPrettyPrint) _ciiUserIp
              _ciiFolderId
              _ciiKey
              _ciiOauthToken
              _ciiFields
              (Just _ciiAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ChildrenInsertAPI)
                      r
                      u
