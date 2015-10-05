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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Testers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsTestersPatch@.
module Network.Google.Resource.AndroidPublisher.Edits.Testers.Patch
    (
    -- * REST Resource
      EditsTestersPatchResource

    -- * Creating a Request
    , editsTestersPatch'
    , EditsTestersPatch'

    -- * Request Lenses
    , etptQuotaUser
    , etptTrack
    , etptPrettyPrint
    , etptPackageName
    , etptUserIP
    , etptPayload
    , etptKey
    , etptOAuthToken
    , etptEditId
    , etptFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsTestersPatch@ which the
-- 'EditsTestersPatch'' request conforms to.
type EditsTestersPatchResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "testers" :>
             Capture "track" EditsTestersPatchTrack :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Testers :> Patch '[JSON] Testers

--
-- /See:/ 'editsTestersPatch'' smart constructor.
data EditsTestersPatch' = EditsTestersPatch'
    { _etptQuotaUser   :: !(Maybe Text)
    , _etptTrack       :: !EditsTestersPatchTrack
    , _etptPrettyPrint :: !Bool
    , _etptPackageName :: !Text
    , _etptUserIP      :: !(Maybe Text)
    , _etptPayload     :: !Testers
    , _etptKey         :: !(Maybe Key)
    , _etptOAuthToken  :: !(Maybe OAuthToken)
    , _etptEditId      :: !Text
    , _etptFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTestersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etptQuotaUser'
--
-- * 'etptTrack'
--
-- * 'etptPrettyPrint'
--
-- * 'etptPackageName'
--
-- * 'etptUserIP'
--
-- * 'etptPayload'
--
-- * 'etptKey'
--
-- * 'etptOAuthToken'
--
-- * 'etptEditId'
--
-- * 'etptFields'
editsTestersPatch'
    :: EditsTestersPatchTrack -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Testers -- ^ 'payload'
    -> Text -- ^ 'editId'
    -> EditsTestersPatch'
editsTestersPatch' pEtptTrack_ pEtptPackageName_ pEtptPayload_ pEtptEditId_ =
    EditsTestersPatch'
    { _etptQuotaUser = Nothing
    , _etptTrack = pEtptTrack_
    , _etptPrettyPrint = True
    , _etptPackageName = pEtptPackageName_
    , _etptUserIP = Nothing
    , _etptPayload = pEtptPayload_
    , _etptKey = Nothing
    , _etptOAuthToken = Nothing
    , _etptEditId = pEtptEditId_
    , _etptFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etptQuotaUser :: Lens' EditsTestersPatch' (Maybe Text)
etptQuotaUser
  = lens _etptQuotaUser
      (\ s a -> s{_etptQuotaUser = a})

etptTrack :: Lens' EditsTestersPatch' EditsTestersPatchTrack
etptTrack
  = lens _etptTrack (\ s a -> s{_etptTrack = a})

-- | Returns response with indentations and line breaks.
etptPrettyPrint :: Lens' EditsTestersPatch' Bool
etptPrettyPrint
  = lens _etptPrettyPrint
      (\ s a -> s{_etptPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etptPackageName :: Lens' EditsTestersPatch' Text
etptPackageName
  = lens _etptPackageName
      (\ s a -> s{_etptPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etptUserIP :: Lens' EditsTestersPatch' (Maybe Text)
etptUserIP
  = lens _etptUserIP (\ s a -> s{_etptUserIP = a})

-- | Multipart request metadata.
etptPayload :: Lens' EditsTestersPatch' Testers
etptPayload
  = lens _etptPayload (\ s a -> s{_etptPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etptKey :: Lens' EditsTestersPatch' (Maybe Key)
etptKey = lens _etptKey (\ s a -> s{_etptKey = a})

-- | OAuth 2.0 token for the current user.
etptOAuthToken :: Lens' EditsTestersPatch' (Maybe OAuthToken)
etptOAuthToken
  = lens _etptOAuthToken
      (\ s a -> s{_etptOAuthToken = a})

-- | Unique identifier for this edit.
etptEditId :: Lens' EditsTestersPatch' Text
etptEditId
  = lens _etptEditId (\ s a -> s{_etptEditId = a})

-- | Selector specifying which fields to include in a partial response.
etptFields :: Lens' EditsTestersPatch' (Maybe Text)
etptFields
  = lens _etptFields (\ s a -> s{_etptFields = a})

instance GoogleAuth EditsTestersPatch' where
        authKey = etptKey . _Just
        authToken = etptOAuthToken . _Just

instance GoogleRequest EditsTestersPatch' where
        type Rs EditsTestersPatch' = Testers
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsTestersPatch'{..}
          = go _etptPackageName _etptEditId _etptTrack
              _etptQuotaUser
              (Just _etptPrettyPrint)
              _etptUserIP
              _etptFields
              _etptKey
              _etptOAuthToken
              (Just AltJSON)
              _etptPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTestersPatchResource)
                      r
                      u
