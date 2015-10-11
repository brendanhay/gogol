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
-- Module      : Network.Google.Resource.Directory.Groups.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update Group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsUpdate@.
module Network.Google.Resource.Directory.Groups.Update
    (
    -- * REST Resource
      GroupsUpdateResource

    -- * Creating a Request
    , groupsUpdate'
    , GroupsUpdate'

    -- * Request Lenses
    , guQuotaUser
    , guPrettyPrint
    , guUserIP
    , guGroupKey
    , guPayload
    , guKey
    , guOAuthToken
    , guFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsUpdate@ method which the
-- 'GroupsUpdate'' request conforms to.
type GroupsUpdateResource =
     "groups" :>
       Capture "groupKey" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Group :> Put '[JSON] Group

-- | Update Group
--
-- /See:/ 'groupsUpdate'' smart constructor.
data GroupsUpdate' = GroupsUpdate'
    { _guQuotaUser   :: !(Maybe Text)
    , _guPrettyPrint :: !Bool
    , _guUserIP      :: !(Maybe Text)
    , _guGroupKey    :: !Text
    , _guPayload     :: !Group
    , _guKey         :: !(Maybe AuthKey)
    , _guOAuthToken  :: !(Maybe OAuthToken)
    , _guFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guQuotaUser'
--
-- * 'guPrettyPrint'
--
-- * 'guUserIP'
--
-- * 'guGroupKey'
--
-- * 'guPayload'
--
-- * 'guKey'
--
-- * 'guOAuthToken'
--
-- * 'guFields'
groupsUpdate'
    :: Text -- ^ 'groupKey'
    -> Group -- ^ 'payload'
    -> GroupsUpdate'
groupsUpdate' pGuGroupKey_ pGuPayload_ =
    GroupsUpdate'
    { _guQuotaUser = Nothing
    , _guPrettyPrint = True
    , _guUserIP = Nothing
    , _guGroupKey = pGuGroupKey_
    , _guPayload = pGuPayload_
    , _guKey = Nothing
    , _guOAuthToken = Nothing
    , _guFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
guQuotaUser :: Lens' GroupsUpdate' (Maybe Text)
guQuotaUser
  = lens _guQuotaUser (\ s a -> s{_guQuotaUser = a})

-- | Returns response with indentations and line breaks.
guPrettyPrint :: Lens' GroupsUpdate' Bool
guPrettyPrint
  = lens _guPrettyPrint
      (\ s a -> s{_guPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
guUserIP :: Lens' GroupsUpdate' (Maybe Text)
guUserIP = lens _guUserIP (\ s a -> s{_guUserIP = a})

-- | Email or immutable Id of the group. If Id, it should match with id of
-- group object
guGroupKey :: Lens' GroupsUpdate' Text
guGroupKey
  = lens _guGroupKey (\ s a -> s{_guGroupKey = a})

-- | Multipart request metadata.
guPayload :: Lens' GroupsUpdate' Group
guPayload
  = lens _guPayload (\ s a -> s{_guPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
guKey :: Lens' GroupsUpdate' (Maybe AuthKey)
guKey = lens _guKey (\ s a -> s{_guKey = a})

-- | OAuth 2.0 token for the current user.
guOAuthToken :: Lens' GroupsUpdate' (Maybe OAuthToken)
guOAuthToken
  = lens _guOAuthToken (\ s a -> s{_guOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
guFields :: Lens' GroupsUpdate' (Maybe Text)
guFields = lens _guFields (\ s a -> s{_guFields = a})

instance GoogleAuth GroupsUpdate' where
        _AuthKey = guKey . _Just
        _AuthToken = guOAuthToken . _Just

instance GoogleRequest GroupsUpdate' where
        type Rs GroupsUpdate' = Group
        request = requestWith directoryRequest
        requestWith rq GroupsUpdate'{..}
          = go _guGroupKey _guQuotaUser (Just _guPrettyPrint)
              _guUserIP
              _guFields
              _guKey
              _guOAuthToken
              (Just AltJSON)
              _guPayload
          where go
                  = clientBuild (Proxy :: Proxy GroupsUpdateResource)
                      rq
