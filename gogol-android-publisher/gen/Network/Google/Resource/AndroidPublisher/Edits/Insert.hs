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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new edit for an app, populated with the app\'s current state.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsInsert@.
module Network.Google.Resource.AndroidPublisher.Edits.Insert
    (
    -- * REST Resource
      EditsInsertResource

    -- * Creating a Request
    , editsInsert'
    , EditsInsert'

    -- * Request Lenses
    , eiQuotaUser
    , eiPrettyPrint
    , eiPackageName
    , eiUserIP
    , eiPayload
    , eiKey
    , eiOAuthToken
    , eiFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsInsert@ which the
-- 'EditsInsert'' request conforms to.
type EditsInsertResource =
     Capture "packageName" Text :>
       "edits" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AppEdit :> Post '[JSON] AppEdit

-- | Creates a new edit for an app, populated with the app\'s current state.
--
-- /See:/ 'editsInsert'' smart constructor.
data EditsInsert' = EditsInsert'
    { _eiQuotaUser   :: !(Maybe Text)
    , _eiPrettyPrint :: !Bool
    , _eiPackageName :: !Text
    , _eiUserIP      :: !(Maybe Text)
    , _eiPayload     :: !AppEdit
    , _eiKey         :: !(Maybe Key)
    , _eiOAuthToken  :: !(Maybe OAuthToken)
    , _eiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiQuotaUser'
--
-- * 'eiPrettyPrint'
--
-- * 'eiPackageName'
--
-- * 'eiUserIP'
--
-- * 'eiPayload'
--
-- * 'eiKey'
--
-- * 'eiOAuthToken'
--
-- * 'eiFields'
editsInsert'
    :: Text -- ^ 'packageName'
    -> AppEdit -- ^ 'payload'
    -> EditsInsert'
editsInsert' pEiPackageName_ pEiPayload_ =
    EditsInsert'
    { _eiQuotaUser = Nothing
    , _eiPrettyPrint = True
    , _eiPackageName = pEiPackageName_
    , _eiUserIP = Nothing
    , _eiPayload = pEiPayload_
    , _eiKey = Nothing
    , _eiOAuthToken = Nothing
    , _eiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eiQuotaUser :: Lens' EditsInsert' (Maybe Text)
eiQuotaUser
  = lens _eiQuotaUser (\ s a -> s{_eiQuotaUser = a})

-- | Returns response with indentations and line breaks.
eiPrettyPrint :: Lens' EditsInsert' Bool
eiPrettyPrint
  = lens _eiPrettyPrint
      (\ s a -> s{_eiPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eiPackageName :: Lens' EditsInsert' Text
eiPackageName
  = lens _eiPackageName
      (\ s a -> s{_eiPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eiUserIP :: Lens' EditsInsert' (Maybe Text)
eiUserIP = lens _eiUserIP (\ s a -> s{_eiUserIP = a})

-- | Multipart request metadata.
eiPayload :: Lens' EditsInsert' AppEdit
eiPayload
  = lens _eiPayload (\ s a -> s{_eiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eiKey :: Lens' EditsInsert' (Maybe Key)
eiKey = lens _eiKey (\ s a -> s{_eiKey = a})

-- | OAuth 2.0 token for the current user.
eiOAuthToken :: Lens' EditsInsert' (Maybe OAuthToken)
eiOAuthToken
  = lens _eiOAuthToken (\ s a -> s{_eiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
eiFields :: Lens' EditsInsert' (Maybe Text)
eiFields = lens _eiFields (\ s a -> s{_eiFields = a})

instance GoogleAuth EditsInsert' where
        authKey = eiKey . _Just
        authToken = eiOAuthToken . _Just

instance GoogleRequest EditsInsert' where
        type Rs EditsInsert' = AppEdit
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsInsert'{..}
          = go _eiPackageName _eiQuotaUser
              (Just _eiPrettyPrint)
              _eiUserIP
              _eiFields
              _eiKey
              _eiOAuthToken
              (Just AltJSON)
              _eiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsInsertResource)
                      r
                      u
