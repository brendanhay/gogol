{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mirror.Contacts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a contact in place. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.contacts.patch@.
module Network.Google.API.Mirror.Contacts.Patch
    (
    -- * REST Resource
      ContactsPatchAPI

    -- * Creating a Request
    , contactsPatch'
    , ContactsPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpUserIp
    , cpKey
    , cpId
    , cpOauthToken
    , cpFields
    , cpAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for mirror.contacts.patch which the
-- 'ContactsPatch'' request conforms to.
type ContactsPatchAPI =
     "contacts" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Patch '[JSON] Contact

-- | Updates a contact in place. This method supports patch semantics.
--
-- /See:/ 'contactsPatch'' smart constructor.
data ContactsPatch' = ContactsPatch'
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpPrettyPrint :: !Bool
    , _cpUserIp      :: !(Maybe Text)
    , _cpKey         :: !(Maybe Text)
    , _cpId          :: !Text
    , _cpOauthToken  :: !(Maybe Text)
    , _cpFields      :: !(Maybe Text)
    , _cpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIp'
--
-- * 'cpKey'
--
-- * 'cpId'
--
-- * 'cpOauthToken'
--
-- * 'cpFields'
--
-- * 'cpAlt'
contactsPatch'
    :: Text -- ^ 'id'
    -> ContactsPatch'
contactsPatch' pCpId_ =
    ContactsPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIp = Nothing
    , _cpKey = Nothing
    , _cpId = pCpId_
    , _cpOauthToken = Nothing
    , _cpFields = Nothing
    , _cpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cpQuotaUser :: Lens' ContactsPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' ContactsPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cpUserIp :: Lens' ContactsPatch' (Maybe Text)
cpUserIp = lens _cpUserIp (\ s a -> s{_cpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' ContactsPatch' (Maybe Text)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | The ID of the contact.
cpId :: Lens' ContactsPatch' Text
cpId = lens _cpId (\ s a -> s{_cpId = a})

-- | OAuth 2.0 token for the current user.
cpOauthToken :: Lens' ContactsPatch' (Maybe Text)
cpOauthToken
  = lens _cpOauthToken (\ s a -> s{_cpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' ContactsPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

-- | Data format for the response.
cpAlt :: Lens' ContactsPatch' Alt
cpAlt = lens _cpAlt (\ s a -> s{_cpAlt = a})

instance GoogleRequest ContactsPatch' where
        type Rs ContactsPatch' = Contact
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u ContactsPatch'{..}
          = go _cpQuotaUser (Just _cpPrettyPrint) _cpUserIp
              _cpKey
              _cpId
              _cpOauthToken
              _cpFields
              (Just _cpAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ContactsPatchAPI) r
                      u
