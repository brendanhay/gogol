{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Children.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a specific child reference.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChildrenGet@.
module Network.Google.Resource.Drive.Children.Get
    (
    -- * REST Resource
      ChildrenGetResource

    -- * Creating a Request
    , childrenGet'
    , ChildrenGet'

    -- * Request Lenses
    , chiQuotaUser
    , chiPrettyPrint
    , chiUserIp
    , chiFolderId
    , chiKey
    , chiChildId
    , chiOauthToken
    , chiFields
    , chiAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChildrenGet@ which the
-- 'ChildrenGet'' request conforms to.
type ChildrenGetResource =
     "files" :>
       Capture "folderId" Text :>
         "children" :>
           Capture "childId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] ChildReference

-- | Gets a specific child reference.
--
-- /See:/ 'childrenGet'' smart constructor.
data ChildrenGet' = ChildrenGet'
    { _chiQuotaUser   :: !(Maybe Text)
    , _chiPrettyPrint :: !Bool
    , _chiUserIp      :: !(Maybe Text)
    , _chiFolderId    :: !Text
    , _chiKey         :: !(Maybe Text)
    , _chiChildId     :: !Text
    , _chiOauthToken  :: !(Maybe Text)
    , _chiFields      :: !(Maybe Text)
    , _chiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chiQuotaUser'
--
-- * 'chiPrettyPrint'
--
-- * 'chiUserIp'
--
-- * 'chiFolderId'
--
-- * 'chiKey'
--
-- * 'chiChildId'
--
-- * 'chiOauthToken'
--
-- * 'chiFields'
--
-- * 'chiAlt'
childrenGet'
    :: Text -- ^ 'folderId'
    -> Text -- ^ 'childId'
    -> ChildrenGet'
childrenGet' pChiFolderId_ pChiChildId_ =
    ChildrenGet'
    { _chiQuotaUser = Nothing
    , _chiPrettyPrint = True
    , _chiUserIp = Nothing
    , _chiFolderId = pChiFolderId_
    , _chiKey = Nothing
    , _chiChildId = pChiChildId_
    , _chiOauthToken = Nothing
    , _chiFields = Nothing
    , _chiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
chiQuotaUser :: Lens' ChildrenGet' (Maybe Text)
chiQuotaUser
  = lens _chiQuotaUser (\ s a -> s{_chiQuotaUser = a})

-- | Returns response with indentations and line breaks.
chiPrettyPrint :: Lens' ChildrenGet' Bool
chiPrettyPrint
  = lens _chiPrettyPrint
      (\ s a -> s{_chiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
chiUserIp :: Lens' ChildrenGet' (Maybe Text)
chiUserIp
  = lens _chiUserIp (\ s a -> s{_chiUserIp = a})

-- | The ID of the folder.
chiFolderId :: Lens' ChildrenGet' Text
chiFolderId
  = lens _chiFolderId (\ s a -> s{_chiFolderId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
chiKey :: Lens' ChildrenGet' (Maybe Text)
chiKey = lens _chiKey (\ s a -> s{_chiKey = a})

-- | The ID of the child.
chiChildId :: Lens' ChildrenGet' Text
chiChildId
  = lens _chiChildId (\ s a -> s{_chiChildId = a})

-- | OAuth 2.0 token for the current user.
chiOauthToken :: Lens' ChildrenGet' (Maybe Text)
chiOauthToken
  = lens _chiOauthToken
      (\ s a -> s{_chiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
chiFields :: Lens' ChildrenGet' (Maybe Text)
chiFields
  = lens _chiFields (\ s a -> s{_chiFields = a})

-- | Data format for the response.
chiAlt :: Lens' ChildrenGet' Alt
chiAlt = lens _chiAlt (\ s a -> s{_chiAlt = a})

instance GoogleRequest ChildrenGet' where
        type Rs ChildrenGet' = ChildReference
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChildrenGet'{..}
          = go _chiQuotaUser (Just _chiPrettyPrint) _chiUserIp
              _chiFolderId
              _chiKey
              _chiChildId
              _chiOauthToken
              _chiFields
              (Just _chiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChildrenGetResource)
                      r
                      u
