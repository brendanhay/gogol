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
-- Module      : Network.Google.Resource.Mirror.Contacts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a contact in place. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorContactsPatch@.
module Network.Google.Resource.Mirror.Contacts.Patch
    (
    -- * REST Resource
      ContactsPatchResource

    -- * Creating a Request
    , contactsPatch'
    , ContactsPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpUserIP
    , cpPayload
    , cpKey
    , cpId
    , cpOAuthToken
    , cpFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorContactsPatch@ which the
-- 'ContactsPatch'' request conforms to.
type ContactsPatchResource =
     "contacts" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Contact :> Patch '[JSON] Contact

-- | Updates a contact in place. This method supports patch semantics.
--
-- /See:/ 'contactsPatch'' smart constructor.
data ContactsPatch' = ContactsPatch'
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpPrettyPrint :: !Bool
    , _cpUserIP      :: !(Maybe Text)
    , _cpPayload     :: !Contact
    , _cpKey         :: !(Maybe Key)
    , _cpId          :: !Text
    , _cpOAuthToken  :: !(Maybe OAuthToken)
    , _cpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIP'
--
-- * 'cpPayload'
--
-- * 'cpKey'
--
-- * 'cpId'
--
-- * 'cpOAuthToken'
--
-- * 'cpFields'
contactsPatch'
    :: Contact -- ^ 'payload'
    -> Text -- ^ 'id'
    -> ContactsPatch'
contactsPatch' pCpPayload_ pCpId_ =
    ContactsPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIP = Nothing
    , _cpPayload = pCpPayload_
    , _cpKey = Nothing
    , _cpId = pCpId_
    , _cpOAuthToken = Nothing
    , _cpFields = Nothing
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
cpUserIP :: Lens' ContactsPatch' (Maybe Text)
cpUserIP = lens _cpUserIP (\ s a -> s{_cpUserIP = a})

-- | Multipart request metadata.
cpPayload :: Lens' ContactsPatch' Contact
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' ContactsPatch' (Maybe Key)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | The ID of the contact.
cpId :: Lens' ContactsPatch' Text
cpId = lens _cpId (\ s a -> s{_cpId = a})

-- | OAuth 2.0 token for the current user.
cpOAuthToken :: Lens' ContactsPatch' (Maybe OAuthToken)
cpOAuthToken
  = lens _cpOAuthToken (\ s a -> s{_cpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' ContactsPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

instance GoogleAuth ContactsPatch' where
        authKey = cpKey . _Just
        authToken = cpOAuthToken . _Just

instance GoogleRequest ContactsPatch' where
        type Rs ContactsPatch' = Contact
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u ContactsPatch'{..}
          = go _cpId _cpQuotaUser (Just _cpPrettyPrint)
              _cpUserIP
              _cpFields
              _cpKey
              _cpOAuthToken
              (Just AltJSON)
              _cpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContactsPatchResource)
                      r
                      u
