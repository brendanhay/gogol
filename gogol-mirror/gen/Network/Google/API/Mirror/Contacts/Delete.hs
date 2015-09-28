{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mirror.Contacts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a contact.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.contacts.delete@.
module Network.Google.API.Mirror.Contacts.Delete
    (
    -- * REST Resource
      ContactsDeleteAPI

    -- * Creating a Request
    , contactsDelete'
    , ContactsDelete'

    -- * Request Lenses
    , cdQuotaUser
    , cdPrettyPrint
    , cdUserIp
    , cdKey
    , cdId
    , cdOauthToken
    , cdFields
    , cdAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for mirror.contacts.delete which the
-- 'ContactsDelete'' request conforms to.
type ContactsDeleteAPI =
     "contacts" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a contact.
--
-- /See:/ 'contactsDelete'' smart constructor.
data ContactsDelete' = ContactsDelete'
    { _cdQuotaUser   :: !(Maybe Text)
    , _cdPrettyPrint :: !Bool
    , _cdUserIp      :: !(Maybe Text)
    , _cdKey         :: !(Maybe Text)
    , _cdId          :: !Text
    , _cdOauthToken  :: !(Maybe Text)
    , _cdFields      :: !(Maybe Text)
    , _cdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdUserIp'
--
-- * 'cdKey'
--
-- * 'cdId'
--
-- * 'cdOauthToken'
--
-- * 'cdFields'
--
-- * 'cdAlt'
contactsDelete'
    :: Text -- ^ 'id'
    -> ContactsDelete'
contactsDelete' pCdId_ =
    ContactsDelete'
    { _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdUserIp = Nothing
    , _cdKey = Nothing
    , _cdId = pCdId_
    , _cdOauthToken = Nothing
    , _cdFields = Nothing
    , _cdAlt = JSON
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
cdUserIp :: Lens' ContactsDelete' (Maybe Text)
cdUserIp = lens _cdUserIp (\ s a -> s{_cdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' ContactsDelete' (Maybe Text)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | The ID of the contact.
cdId :: Lens' ContactsDelete' Text
cdId = lens _cdId (\ s a -> s{_cdId = a})

-- | OAuth 2.0 token for the current user.
cdOauthToken :: Lens' ContactsDelete' (Maybe Text)
cdOauthToken
  = lens _cdOauthToken (\ s a -> s{_cdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' ContactsDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

-- | Data format for the response.
cdAlt :: Lens' ContactsDelete' Alt
cdAlt = lens _cdAlt (\ s a -> s{_cdAlt = a})

instance GoogleRequest ContactsDelete' where
        type Rs ContactsDelete' = ()
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u ContactsDelete'{..}
          = go _cdQuotaUser (Just _cdPrettyPrint) _cdUserIp
              _cdKey
              _cdId
              _cdOauthToken
              _cdFields
              (Just _cdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ContactsDeleteAPI)
                      r
                      u
