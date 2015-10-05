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
-- Module      : Network.Google.Resource.Directory.Members.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update membership of a user in the specified group.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMembersUpdate@.
module Network.Google.Resource.Directory.Members.Update
    (
    -- * REST Resource
      MembersUpdateResource

    -- * Creating a Request
    , membersUpdate'
    , MembersUpdate'

    -- * Request Lenses
    , muQuotaUser
    , muMemberKey
    , muPrettyPrint
    , muUserIP
    , muGroupKey
    , muPayload
    , muKey
    , muOAuthToken
    , muFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMembersUpdate@ which the
-- 'MembersUpdate'' request conforms to.
type MembersUpdateResource =
     "groups" :>
       Capture "groupKey" Text :>
         "members" :>
           Capture "memberKey" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Member :> Put '[JSON] Member

-- | Update membership of a user in the specified group.
--
-- /See:/ 'membersUpdate'' smart constructor.
data MembersUpdate' = MembersUpdate'
    { _muQuotaUser   :: !(Maybe Text)
    , _muMemberKey   :: !Text
    , _muPrettyPrint :: !Bool
    , _muUserIP      :: !(Maybe Text)
    , _muGroupKey    :: !Text
    , _muPayload     :: !Member
    , _muKey         :: !(Maybe AuthKey)
    , _muOAuthToken  :: !(Maybe OAuthToken)
    , _muFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muQuotaUser'
--
-- * 'muMemberKey'
--
-- * 'muPrettyPrint'
--
-- * 'muUserIP'
--
-- * 'muGroupKey'
--
-- * 'muPayload'
--
-- * 'muKey'
--
-- * 'muOAuthToken'
--
-- * 'muFields'
membersUpdate'
    :: Text -- ^ 'memberKey'
    -> Text -- ^ 'groupKey'
    -> Member -- ^ 'payload'
    -> MembersUpdate'
membersUpdate' pMuMemberKey_ pMuGroupKey_ pMuPayload_ =
    MembersUpdate'
    { _muQuotaUser = Nothing
    , _muMemberKey = pMuMemberKey_
    , _muPrettyPrint = True
    , _muUserIP = Nothing
    , _muGroupKey = pMuGroupKey_
    , _muPayload = pMuPayload_
    , _muKey = Nothing
    , _muOAuthToken = Nothing
    , _muFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
muQuotaUser :: Lens' MembersUpdate' (Maybe Text)
muQuotaUser
  = lens _muQuotaUser (\ s a -> s{_muQuotaUser = a})

-- | Email or immutable Id of the user. If Id, it should match with id of
-- member object
muMemberKey :: Lens' MembersUpdate' Text
muMemberKey
  = lens _muMemberKey (\ s a -> s{_muMemberKey = a})

-- | Returns response with indentations and line breaks.
muPrettyPrint :: Lens' MembersUpdate' Bool
muPrettyPrint
  = lens _muPrettyPrint
      (\ s a -> s{_muPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
muUserIP :: Lens' MembersUpdate' (Maybe Text)
muUserIP = lens _muUserIP (\ s a -> s{_muUserIP = a})

-- | Email or immutable Id of the group. If Id, it should match with id of
-- group object
muGroupKey :: Lens' MembersUpdate' Text
muGroupKey
  = lens _muGroupKey (\ s a -> s{_muGroupKey = a})

-- | Multipart request metadata.
muPayload :: Lens' MembersUpdate' Member
muPayload
  = lens _muPayload (\ s a -> s{_muPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
muKey :: Lens' MembersUpdate' (Maybe AuthKey)
muKey = lens _muKey (\ s a -> s{_muKey = a})

-- | OAuth 2.0 token for the current user.
muOAuthToken :: Lens' MembersUpdate' (Maybe OAuthToken)
muOAuthToken
  = lens _muOAuthToken (\ s a -> s{_muOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
muFields :: Lens' MembersUpdate' (Maybe Text)
muFields = lens _muFields (\ s a -> s{_muFields = a})

instance GoogleAuth MembersUpdate' where
        authKey = muKey . _Just
        authToken = muOAuthToken . _Just

instance GoogleRequest MembersUpdate' where
        type Rs MembersUpdate' = Member
        request = requestWithRoute defReq directoryURL
        requestWithRoute r u MembersUpdate'{..}
          = go _muGroupKey _muMemberKey _muQuotaUser
              (Just _muPrettyPrint)
              _muUserIP
              _muFields
              _muKey
              _muOAuthToken
              (Just AltJSON)
              _muPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MembersUpdateResource)
                      r
                      u
