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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns information about the edit specified. Calls will fail if the
-- edit is no long active (e.g. has been deleted, superseded or expired).
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsGet@.
module Network.Google.Resource.AndroidPublisher.Edits.Get
    (
    -- * REST Resource
      EditsGetResource

    -- * Creating a Request
    , editsGet'
    , EditsGet'

    -- * Request Lenses
    , egQuotaUser
    , egPrettyPrint
    , egPackageName
    , egUserIP
    , egKey
    , egOAuthToken
    , egEditId
    , egFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsGet@ which the
-- 'EditsGet'' request conforms to.
type EditsGetResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] AppEdit

-- | Returns information about the edit specified. Calls will fail if the
-- edit is no long active (e.g. has been deleted, superseded or expired).
--
-- /See:/ 'editsGet'' smart constructor.
data EditsGet' = EditsGet'
    { _egQuotaUser   :: !(Maybe Text)
    , _egPrettyPrint :: !Bool
    , _egPackageName :: !Text
    , _egUserIP      :: !(Maybe Text)
    , _egKey         :: !(Maybe AuthKey)
    , _egOAuthToken  :: !(Maybe OAuthToken)
    , _egEditId      :: !Text
    , _egFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egQuotaUser'
--
-- * 'egPrettyPrint'
--
-- * 'egPackageName'
--
-- * 'egUserIP'
--
-- * 'egKey'
--
-- * 'egOAuthToken'
--
-- * 'egEditId'
--
-- * 'egFields'
editsGet'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsGet'
editsGet' pEgPackageName_ pEgEditId_ =
    EditsGet'
    { _egQuotaUser = Nothing
    , _egPrettyPrint = True
    , _egPackageName = pEgPackageName_
    , _egUserIP = Nothing
    , _egKey = Nothing
    , _egOAuthToken = Nothing
    , _egEditId = pEgEditId_
    , _egFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
egQuotaUser :: Lens' EditsGet' (Maybe Text)
egQuotaUser
  = lens _egQuotaUser (\ s a -> s{_egQuotaUser = a})

-- | Returns response with indentations and line breaks.
egPrettyPrint :: Lens' EditsGet' Bool
egPrettyPrint
  = lens _egPrettyPrint
      (\ s a -> s{_egPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
egPackageName :: Lens' EditsGet' Text
egPackageName
  = lens _egPackageName
      (\ s a -> s{_egPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
egUserIP :: Lens' EditsGet' (Maybe Text)
egUserIP = lens _egUserIP (\ s a -> s{_egUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
egKey :: Lens' EditsGet' (Maybe AuthKey)
egKey = lens _egKey (\ s a -> s{_egKey = a})

-- | OAuth 2.0 token for the current user.
egOAuthToken :: Lens' EditsGet' (Maybe OAuthToken)
egOAuthToken
  = lens _egOAuthToken (\ s a -> s{_egOAuthToken = a})

-- | Unique identifier for this edit.
egEditId :: Lens' EditsGet' Text
egEditId = lens _egEditId (\ s a -> s{_egEditId = a})

-- | Selector specifying which fields to include in a partial response.
egFields :: Lens' EditsGet' (Maybe Text)
egFields = lens _egFields (\ s a -> s{_egFields = a})

instance GoogleAuth EditsGet' where
        authKey = egKey . _Just
        authToken = egOAuthToken . _Just

instance GoogleRequest EditsGet' where
        type Rs EditsGet' = AppEdit
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsGet'{..}
          = go _egPackageName _egEditId _egQuotaUser
              (Just _egPrettyPrint)
              _egUserIP
              _egFields
              _egKey
              _egOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy EditsGetResource) r
                      u
