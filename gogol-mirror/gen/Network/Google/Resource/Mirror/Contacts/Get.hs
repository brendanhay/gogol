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
-- Module      : Network.Google.Resource.Mirror.Contacts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a single contact by ID.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorContactsGet@.
module Network.Google.Resource.Mirror.Contacts.Get
    (
    -- * REST Resource
      ContactsGetResource

    -- * Creating a Request
    , contactsGet'
    , ContactsGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgUserIp
    , cgKey
    , cgId
    , cgOauthToken
    , cgFields
    , cgAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorContactsGet@ which the
-- 'ContactsGet'' request conforms to.
type ContactsGetResource =
     "contacts" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Contact

-- | Gets a single contact by ID.
--
-- /See:/ 'contactsGet'' smart constructor.
data ContactsGet' = ContactsGet'
    { _cgQuotaUser   :: !(Maybe Text)
    , _cgPrettyPrint :: !Bool
    , _cgUserIp      :: !(Maybe Text)
    , _cgKey         :: !(Maybe Text)
    , _cgId          :: !Text
    , _cgOauthToken  :: !(Maybe Text)
    , _cgFields      :: !(Maybe Text)
    , _cgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIp'
--
-- * 'cgKey'
--
-- * 'cgId'
--
-- * 'cgOauthToken'
--
-- * 'cgFields'
--
-- * 'cgAlt'
contactsGet'
    :: Text -- ^ 'id'
    -> ContactsGet'
contactsGet' pCgId_ =
    ContactsGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUserIp = Nothing
    , _cgKey = Nothing
    , _cgId = pCgId_
    , _cgOauthToken = Nothing
    , _cgFields = Nothing
    , _cgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' ContactsGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' ContactsGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIp :: Lens' ContactsGet' (Maybe Text)
cgUserIp = lens _cgUserIp (\ s a -> s{_cgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' ContactsGet' (Maybe Text)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | The ID of the contact.
cgId :: Lens' ContactsGet' Text
cgId = lens _cgId (\ s a -> s{_cgId = a})

-- | OAuth 2.0 token for the current user.
cgOauthToken :: Lens' ContactsGet' (Maybe Text)
cgOauthToken
  = lens _cgOauthToken (\ s a -> s{_cgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' ContactsGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | Data format for the response.
cgAlt :: Lens' ContactsGet' Alt
cgAlt = lens _cgAlt (\ s a -> s{_cgAlt = a})

instance GoogleRequest ContactsGet' where
        type Rs ContactsGet' = Contact
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u ContactsGet'{..}
          = go _cgQuotaUser (Just _cgPrettyPrint) _cgUserIp
              _cgKey
              _cgId
              _cgOauthToken
              _cgFields
              (Just _cgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContactsGetResource)
                      r
                      u
