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
    , cuUserIp
    , cuKey
    , cuId
    , cuOauthToken
    , cuFields
    , cuAlt
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
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] Contact

-- | Updates a contact in place.
--
-- /See:/ 'contactsUpdate'' smart constructor.
data ContactsUpdate' = ContactsUpdate'
    { _cuQuotaUser   :: !(Maybe Text)
    , _cuPrettyPrint :: !Bool
    , _cuUserIp      :: !(Maybe Text)
    , _cuKey         :: !(Maybe Text)
    , _cuId          :: !Text
    , _cuOauthToken  :: !(Maybe Text)
    , _cuFields      :: !(Maybe Text)
    , _cuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIp'
--
-- * 'cuKey'
--
-- * 'cuId'
--
-- * 'cuOauthToken'
--
-- * 'cuFields'
--
-- * 'cuAlt'
contactsUpdate'
    :: Text -- ^ 'id'
    -> ContactsUpdate'
contactsUpdate' pCuId_ =
    ContactsUpdate'
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuUserIp = Nothing
    , _cuKey = Nothing
    , _cuId = pCuId_
    , _cuOauthToken = Nothing
    , _cuFields = Nothing
    , _cuAlt = JSON
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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIp :: Lens' ContactsUpdate' (Maybe Text)
cuUserIp = lens _cuUserIp (\ s a -> s{_cuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' ContactsUpdate' (Maybe Text)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | The ID of the contact.
cuId :: Lens' ContactsUpdate' Text
cuId = lens _cuId (\ s a -> s{_cuId = a})

-- | OAuth 2.0 token for the current user.
cuOauthToken :: Lens' ContactsUpdate' (Maybe Text)
cuOauthToken
  = lens _cuOauthToken (\ s a -> s{_cuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' ContactsUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

-- | Data format for the response.
cuAlt :: Lens' ContactsUpdate' Alt
cuAlt = lens _cuAlt (\ s a -> s{_cuAlt = a})

instance GoogleRequest ContactsUpdate' where
        type Rs ContactsUpdate' = Contact
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u ContactsUpdate'{..}
          = go _cuQuotaUser (Just _cuPrettyPrint) _cuUserIp
              _cuKey
              _cuId
              _cuOauthToken
              _cuFields
              (Just _cuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContactsUpdateResource)
                      r
                      u
