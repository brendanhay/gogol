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
    , clUserIP
    , clKey
    , clOAuthToken
    , clFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorContactsList@ method which the
-- 'ContactsList'' request conforms to.
type ContactsListResource =
     "contacts" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 Header "Authorization" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ContactsListResponse

-- | Retrieves a list of contacts for the authenticated user.
--
-- /See:/ 'contactsList'' smart constructor.
data ContactsList' = ContactsList'
    { _clQuotaUser   :: !(Maybe Text)
    , _clPrettyPrint :: !Bool
    , _clUserIP      :: !(Maybe Text)
    , _clKey         :: !(Maybe AuthKey)
    , _clOAuthToken  :: !(Maybe OAuthToken)
    , _clFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clUserIP'
--
-- * 'clKey'
--
-- * 'clOAuthToken'
--
-- * 'clFields'
contactsList'
    :: ContactsList'
contactsList' =
    ContactsList'
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clUserIP = Nothing
    , _clKey = Nothing
    , _clOAuthToken = Nothing
    , _clFields = Nothing
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
clUserIP :: Lens' ContactsList' (Maybe Text)
clUserIP = lens _clUserIP (\ s a -> s{_clUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' ContactsList' (Maybe AuthKey)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | OAuth 2.0 token for the current user.
clOAuthToken :: Lens' ContactsList' (Maybe OAuthToken)
clOAuthToken
  = lens _clOAuthToken (\ s a -> s{_clOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' ContactsList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

instance GoogleAuth ContactsList' where
        _AuthKey = clKey . _Just
        _AuthToken = clOAuthToken . _Just

instance GoogleRequest ContactsList' where
        type Rs ContactsList' = ContactsListResponse
        request = requestWith mirrorRequest
        requestWith rq ContactsList'{..}
          = go _clQuotaUser (Just _clPrettyPrint) _clUserIP
              _clFields
              _clKey
              _clOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ContactsListResource)
                      rq
