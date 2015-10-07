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
-- Module      : Network.Google.Resource.Mirror.Contacts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a contact.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorContactsDelete@.
module Network.Google.Resource.Mirror.Contacts.Delete
    (
    -- * REST Resource
      ContactsDeleteResource

    -- * Creating a Request
    , contactsDelete'
    , ContactsDelete'

    -- * Request Lenses
    , cdQuotaUser
    , cdPrettyPrint
    , cdUserIP
    , cdKey
    , cdId
    , cdOAuthToken
    , cdFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorContactsDelete@ method which the
-- 'ContactsDelete'' request conforms to.
type ContactsDeleteResource =
     "contacts" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a contact.
--
-- /See:/ 'contactsDelete'' smart constructor.
data ContactsDelete' = ContactsDelete'
    { _cdQuotaUser   :: !(Maybe Text)
    , _cdPrettyPrint :: !Bool
    , _cdUserIP      :: !(Maybe Text)
    , _cdKey         :: !(Maybe AuthKey)
    , _cdId          :: !Text
    , _cdOAuthToken  :: !(Maybe OAuthToken)
    , _cdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdUserIP'
--
-- * 'cdKey'
--
-- * 'cdId'
--
-- * 'cdOAuthToken'
--
-- * 'cdFields'
contactsDelete'
    :: Text -- ^ 'id'
    -> ContactsDelete'
contactsDelete' pCdId_ =
    ContactsDelete'
    { _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdUserIP = Nothing
    , _cdKey = Nothing
    , _cdId = pCdId_
    , _cdOAuthToken = Nothing
    , _cdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdQuotaUser :: Lens' ContactsDelete' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' ContactsDelete' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdUserIP :: Lens' ContactsDelete' (Maybe Text)
cdUserIP = lens _cdUserIP (\ s a -> s{_cdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' ContactsDelete' (Maybe AuthKey)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | The ID of the contact.
cdId :: Lens' ContactsDelete' Text
cdId = lens _cdId (\ s a -> s{_cdId = a})

-- | OAuth 2.0 token for the current user.
cdOAuthToken :: Lens' ContactsDelete' (Maybe OAuthToken)
cdOAuthToken
  = lens _cdOAuthToken (\ s a -> s{_cdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' ContactsDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

instance GoogleAuth ContactsDelete' where
        _AuthKey = cdKey . _Just
        _AuthToken = cdOAuthToken . _Just

instance GoogleRequest ContactsDelete' where
        type Rs ContactsDelete' = ()
        request = requestWith mirrorRequest
        requestWith rq ContactsDelete'{..}
          = go _cdId _cdQuotaUser (Just _cdPrettyPrint)
              _cdUserIP
              _cdFields
              _cdKey
              _cdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ContactsDeleteResource)
                      rq
