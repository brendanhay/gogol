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
-- Module      : Network.Google.Resource.Directory.Members.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update membership of a user in the specified group. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMembersPatch@.
module Network.Google.Resource.Directory.Members.Patch
    (
    -- * REST Resource
      MembersPatchResource

    -- * Creating a Request
    , membersPatch'
    , MembersPatch'

    -- * Request Lenses
    , mpQuotaUser
    , mpMemberKey
    , mpPrettyPrint
    , mpUserIP
    , mpGroupKey
    , mpKey
    , mpMember
    , mpOAuthToken
    , mpFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMembersPatch@ which the
-- 'MembersPatch'' request conforms to.
type MembersPatchResource =
     "groups" :>
       Capture "groupKey" Text :>
         "members" :>
           Capture "memberKey" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Member :> Patch '[JSON] Member

-- | Update membership of a user in the specified group. This method supports
-- patch semantics.
--
-- /See:/ 'membersPatch'' smart constructor.
data MembersPatch' = MembersPatch'
    { _mpQuotaUser   :: !(Maybe Text)
    , _mpMemberKey   :: !Text
    , _mpPrettyPrint :: !Bool
    , _mpUserIP      :: !(Maybe Text)
    , _mpGroupKey    :: !Text
    , _mpKey         :: !(Maybe Key)
    , _mpMember      :: !Member
    , _mpOAuthToken  :: !(Maybe OAuthToken)
    , _mpFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpQuotaUser'
--
-- * 'mpMemberKey'
--
-- * 'mpPrettyPrint'
--
-- * 'mpUserIP'
--
-- * 'mpGroupKey'
--
-- * 'mpKey'
--
-- * 'mpMember'
--
-- * 'mpOAuthToken'
--
-- * 'mpFields'
membersPatch'
    :: Text -- ^ 'memberKey'
    -> Text -- ^ 'groupKey'
    -> Member -- ^ 'Member'
    -> MembersPatch'
membersPatch' pMpMemberKey_ pMpGroupKey_ pMpMember_ =
    MembersPatch'
    { _mpQuotaUser = Nothing
    , _mpMemberKey = pMpMemberKey_
    , _mpPrettyPrint = True
    , _mpUserIP = Nothing
    , _mpGroupKey = pMpGroupKey_
    , _mpKey = Nothing
    , _mpMember = pMpMember_
    , _mpOAuthToken = Nothing
    , _mpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpQuotaUser :: Lens' MembersPatch' (Maybe Text)
mpQuotaUser
  = lens _mpQuotaUser (\ s a -> s{_mpQuotaUser = a})

-- | Email or immutable Id of the user. If Id, it should match with id of
-- member object
mpMemberKey :: Lens' MembersPatch' Text
mpMemberKey
  = lens _mpMemberKey (\ s a -> s{_mpMemberKey = a})

-- | Returns response with indentations and line breaks.
mpPrettyPrint :: Lens' MembersPatch' Bool
mpPrettyPrint
  = lens _mpPrettyPrint
      (\ s a -> s{_mpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpUserIP :: Lens' MembersPatch' (Maybe Text)
mpUserIP = lens _mpUserIP (\ s a -> s{_mpUserIP = a})

-- | Email or immutable Id of the group. If Id, it should match with id of
-- group object
mpGroupKey :: Lens' MembersPatch' Text
mpGroupKey
  = lens _mpGroupKey (\ s a -> s{_mpGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpKey :: Lens' MembersPatch' (Maybe Key)
mpKey = lens _mpKey (\ s a -> s{_mpKey = a})

-- | Multipart request metadata.
mpMember :: Lens' MembersPatch' Member
mpMember = lens _mpMember (\ s a -> s{_mpMember = a})

-- | OAuth 2.0 token for the current user.
mpOAuthToken :: Lens' MembersPatch' (Maybe OAuthToken)
mpOAuthToken
  = lens _mpOAuthToken (\ s a -> s{_mpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpFields :: Lens' MembersPatch' (Maybe Text)
mpFields = lens _mpFields (\ s a -> s{_mpFields = a})

instance GoogleAuth MembersPatch' where
        authKey = mpKey . _Just
        authToken = mpOAuthToken . _Just

instance GoogleRequest MembersPatch' where
        type Rs MembersPatch' = Member
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MembersPatch'{..}
          = go _mpQuotaUser _mpMemberKey (Just _mpPrettyPrint)
              _mpUserIP
              _mpGroupKey
              _mpKey
              _mpOAuthToken
              _mpFields
              (Just AltJSON)
              _mpMember
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MembersPatchResource)
                      r
                      u
