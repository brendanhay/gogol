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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Validate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Checks that the edit can be successfully committed. The edit\'s changes
-- are not applied to the live app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsValidate@.
module Network.Google.Resource.AndroidPublisher.Edits.Validate
    (
    -- * REST Resource
      EditsValidateResource

    -- * Creating a Request
    , editsValidate'
    , EditsValidate'

    -- * Request Lenses
    , evQuotaUser
    , evPrettyPrint
    , evPackageName
    , evUserIP
    , evKey
    , evOAuthToken
    , evEditId
    , evFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsValidate@ which the
-- 'EditsValidate'' request conforms to.
type EditsValidateResource =
     Capture "packageName" Text :>
       "edits" :>
         CaptureMode "editId" "validate" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Post '[JSON] AppEdit

-- | Checks that the edit can be successfully committed. The edit\'s changes
-- are not applied to the live app.
--
-- /See:/ 'editsValidate'' smart constructor.
data EditsValidate' = EditsValidate'
    { _evQuotaUser   :: !(Maybe Text)
    , _evPrettyPrint :: !Bool
    , _evPackageName :: !Text
    , _evUserIP      :: !(Maybe Text)
    , _evKey         :: !(Maybe Key)
    , _evOAuthToken  :: !(Maybe OAuthToken)
    , _evEditId      :: !Text
    , _evFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsValidate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evQuotaUser'
--
-- * 'evPrettyPrint'
--
-- * 'evPackageName'
--
-- * 'evUserIP'
--
-- * 'evKey'
--
-- * 'evOAuthToken'
--
-- * 'evEditId'
--
-- * 'evFields'
editsValidate'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsValidate'
editsValidate' pEvPackageName_ pEvEditId_ =
    EditsValidate'
    { _evQuotaUser = Nothing
    , _evPrettyPrint = True
    , _evPackageName = pEvPackageName_
    , _evUserIP = Nothing
    , _evKey = Nothing
    , _evOAuthToken = Nothing
    , _evEditId = pEvEditId_
    , _evFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
evQuotaUser :: Lens' EditsValidate' (Maybe Text)
evQuotaUser
  = lens _evQuotaUser (\ s a -> s{_evQuotaUser = a})

-- | Returns response with indentations and line breaks.
evPrettyPrint :: Lens' EditsValidate' Bool
evPrettyPrint
  = lens _evPrettyPrint
      (\ s a -> s{_evPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
evPackageName :: Lens' EditsValidate' Text
evPackageName
  = lens _evPackageName
      (\ s a -> s{_evPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
evUserIP :: Lens' EditsValidate' (Maybe Text)
evUserIP = lens _evUserIP (\ s a -> s{_evUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
evKey :: Lens' EditsValidate' (Maybe Key)
evKey = lens _evKey (\ s a -> s{_evKey = a})

-- | OAuth 2.0 token for the current user.
evOAuthToken :: Lens' EditsValidate' (Maybe OAuthToken)
evOAuthToken
  = lens _evOAuthToken (\ s a -> s{_evOAuthToken = a})

-- | Unique identifier for this edit.
evEditId :: Lens' EditsValidate' Text
evEditId = lens _evEditId (\ s a -> s{_evEditId = a})

-- | Selector specifying which fields to include in a partial response.
evFields :: Lens' EditsValidate' (Maybe Text)
evFields = lens _evFields (\ s a -> s{_evFields = a})

instance GoogleAuth EditsValidate' where
        authKey = evKey . _Just
        authToken = evOAuthToken . _Just

instance GoogleRequest EditsValidate' where
        type Rs EditsValidate' = AppEdit
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsValidate'{..}
          = go _evPackageName _evEditId _evQuotaUser
              (Just _evPrettyPrint)
              _evUserIP
              _evFields
              _evKey
              _evOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsValidateResource)
                      r
                      u
