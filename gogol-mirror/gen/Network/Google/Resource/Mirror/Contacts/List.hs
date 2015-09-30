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
-- Module      : Network.Google.Resource.Mirror.Contacts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of contacts for the authenticated user.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorContactsList@.
module Network.Google.Resource.Mirror.Contacts.List
    (
    -- * REST Resource
      ContactsListResource

    -- * Creating a Request
    , contactsList'
    , ContactsList'

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clUserIp
    , clKey
    , clOauthToken
    , clFields
    , clAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorContactsList@ which the
-- 'ContactsList'' request conforms to.
type ContactsListResource =
     "contacts" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Get '[JSON] ContactsListResponse

-- | Retrieves a list of contacts for the authenticated user.
--
-- /See:/ 'contactsList'' smart constructor.
data ContactsList' = ContactsList'
    { _clQuotaUser   :: !(Maybe Text)
    , _clPrettyPrint :: !Bool
    , _clUserIp      :: !(Maybe Text)
    , _clKey         :: !(Maybe Text)
    , _clOauthToken  :: !(Maybe Text)
    , _clFields      :: !(Maybe Text)
    , _clAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clUserIp'
--
-- * 'clKey'
--
-- * 'clOauthToken'
--
-- * 'clFields'
--
-- * 'clAlt'
contactsList'
    :: ContactsList'
contactsList' =
    ContactsList'
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clUserIp = Nothing
    , _clKey = Nothing
    , _clOauthToken = Nothing
    , _clFields = Nothing
    , _clAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' ContactsList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' ContactsList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIp :: Lens' ContactsList' (Maybe Text)
clUserIp = lens _clUserIp (\ s a -> s{_clUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' ContactsList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' ContactsList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' ContactsList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Data format for the response.
clAlt :: Lens' ContactsList' Alt
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest ContactsList' where
        type Rs ContactsList' = ContactsListResponse
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u ContactsList'{..}
          = go _clQuotaUser (Just _clPrettyPrint) _clUserIp
              _clKey
              _clOauthToken
              _clFields
              (Just _clAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContactsListResource)
                      r
                      u
