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
-- Module      : Network.Google.Resource.Mirror.Contacts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a contact in place.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorContactsUpdate@.
module Network.Google.Resource.Mirror.Contacts.Update
    (
    -- * REST Resource
      ContactsUpdateResource

    -- * Creating a Request
    , contactsUpdate'
    , ContactsUpdate'

    -- * Request Lenses
    , cuQuotaUser
    , cuPrettyPrint
    , cuContact
    , cuUserIP
    , cuKey
    , cuId
    , cuOAuthToken
    , cuFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorContactsUpdate@ which the
-- 'ContactsUpdate'' request conforms to.
type ContactsUpdateResource =
     "contacts" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Contact :> Put '[JSON] Contact

-- | Updates a contact in place.
--
-- /See:/ 'contactsUpdate'' smart constructor.
data ContactsUpdate' = ContactsUpdate'
    { _cuQuotaUser   :: !(Maybe Text)
    , _cuPrettyPrint :: !Bool
    , _cuContact     :: !Contact
    , _cuUserIP      :: !(Maybe Text)
    , _cuKey         :: !(Maybe Key)
    , _cuId          :: !Text
    , _cuOAuthToken  :: !(Maybe OAuthToken)
    , _cuFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuContact'
--
-- * 'cuUserIP'
--
-- * 'cuKey'
--
-- * 'cuId'
--
-- * 'cuOAuthToken'
--
-- * 'cuFields'
contactsUpdate'
    :: Contact -- ^ 'Contact'
    -> Text -- ^ 'id'
    -> ContactsUpdate'
contactsUpdate' pCuContact_ pCuId_ =
    ContactsUpdate'
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuContact = pCuContact_
    , _cuUserIP = Nothing
    , _cuKey = Nothing
    , _cuId = pCuId_
    , _cuOAuthToken = Nothing
    , _cuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' ContactsUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' ContactsUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | Multipart request metadata.
cuContact :: Lens' ContactsUpdate' Contact
cuContact
  = lens _cuContact (\ s a -> s{_cuContact = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIP :: Lens' ContactsUpdate' (Maybe Text)
cuUserIP = lens _cuUserIP (\ s a -> s{_cuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' ContactsUpdate' (Maybe Key)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | The ID of the contact.
cuId :: Lens' ContactsUpdate' Text
cuId = lens _cuId (\ s a -> s{_cuId = a})

-- | OAuth 2.0 token for the current user.
cuOAuthToken :: Lens' ContactsUpdate' (Maybe OAuthToken)
cuOAuthToken
  = lens _cuOAuthToken (\ s a -> s{_cuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' ContactsUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

instance GoogleAuth ContactsUpdate' where
        authKey = cuKey . _Just
        authToken = cuOAuthToken . _Just

instance GoogleRequest ContactsUpdate' where
        type Rs ContactsUpdate' = Contact
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u ContactsUpdate'{..}
          = go _cuQuotaUser (Just _cuPrettyPrint) _cuUserIP
              _cuKey
              _cuId
              _cuOAuthToken
              _cuFields
              (Just AltJSON)
              _cuContact
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContactsUpdateResource)
                      r
                      u
