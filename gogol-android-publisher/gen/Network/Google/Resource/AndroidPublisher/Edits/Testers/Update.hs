{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Testers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsTestersUpdate@.
module Network.Google.Resource.AndroidPublisher.Edits.Testers.Update
    (
    -- * REST Resource
      EditsTestersUpdateResource

    -- * Creating a Request
    , editsTestersUpdate'
    , EditsTestersUpdate'

    -- * Request Lenses
    , etutQuotaUser
    , etutTrack
    , etutPrettyPrint
    , etutPackageName
    , etutUserIP
    , etutPayload
    , etutKey
    , etutOAuthToken
    , etutEditId
    , etutFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsTestersUpdate@ which the
-- 'EditsTestersUpdate'' request conforms to.
type EditsTestersUpdateResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "testers" :>
             Capture "track"
               AndroidPublisherEditsTestersUpdateTrack
               :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Testers :> Put '[JSON] Testers

--
-- /See:/ 'editsTestersUpdate'' smart constructor.
data EditsTestersUpdate' = EditsTestersUpdate'
    { _etutQuotaUser   :: !(Maybe Text)
    , _etutTrack       :: !AndroidPublisherEditsTestersUpdateTrack
    , _etutPrettyPrint :: !Bool
    , _etutPackageName :: !Text
    , _etutUserIP      :: !(Maybe Text)
    , _etutPayload     :: !Testers
    , _etutKey         :: !(Maybe Key)
    , _etutOAuthToken  :: !(Maybe OAuthToken)
    , _etutEditId      :: !Text
    , _etutFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTestersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etutQuotaUser'
--
-- * 'etutTrack'
--
-- * 'etutPrettyPrint'
--
-- * 'etutPackageName'
--
-- * 'etutUserIP'
--
-- * 'etutPayload'
--
-- * 'etutKey'
--
-- * 'etutOAuthToken'
--
-- * 'etutEditId'
--
-- * 'etutFields'
editsTestersUpdate'
    :: AndroidPublisherEditsTestersUpdateTrack -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Testers -- ^ 'payload'
    -> Text -- ^ 'editId'
    -> EditsTestersUpdate'
editsTestersUpdate' pEtutTrack_ pEtutPackageName_ pEtutPayload_ pEtutEditId_ =
    EditsTestersUpdate'
    { _etutQuotaUser = Nothing
    , _etutTrack = pEtutTrack_
    , _etutPrettyPrint = True
    , _etutPackageName = pEtutPackageName_
    , _etutUserIP = Nothing
    , _etutPayload = pEtutPayload_
    , _etutKey = Nothing
    , _etutOAuthToken = Nothing
    , _etutEditId = pEtutEditId_
    , _etutFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etutQuotaUser :: Lens' EditsTestersUpdate' (Maybe Text)
etutQuotaUser
  = lens _etutQuotaUser
      (\ s a -> s{_etutQuotaUser = a})

etutTrack :: Lens' EditsTestersUpdate' AndroidPublisherEditsTestersUpdateTrack
etutTrack
  = lens _etutTrack (\ s a -> s{_etutTrack = a})

-- | Returns response with indentations and line breaks.
etutPrettyPrint :: Lens' EditsTestersUpdate' Bool
etutPrettyPrint
  = lens _etutPrettyPrint
      (\ s a -> s{_etutPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etutPackageName :: Lens' EditsTestersUpdate' Text
etutPackageName
  = lens _etutPackageName
      (\ s a -> s{_etutPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etutUserIP :: Lens' EditsTestersUpdate' (Maybe Text)
etutUserIP
  = lens _etutUserIP (\ s a -> s{_etutUserIP = a})

-- | Multipart request metadata.
etutPayload :: Lens' EditsTestersUpdate' Testers
etutPayload
  = lens _etutPayload (\ s a -> s{_etutPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etutKey :: Lens' EditsTestersUpdate' (Maybe Key)
etutKey = lens _etutKey (\ s a -> s{_etutKey = a})

-- | OAuth 2.0 token for the current user.
etutOAuthToken :: Lens' EditsTestersUpdate' (Maybe OAuthToken)
etutOAuthToken
  = lens _etutOAuthToken
      (\ s a -> s{_etutOAuthToken = a})

-- | Unique identifier for this edit.
etutEditId :: Lens' EditsTestersUpdate' Text
etutEditId
  = lens _etutEditId (\ s a -> s{_etutEditId = a})

-- | Selector specifying which fields to include in a partial response.
etutFields :: Lens' EditsTestersUpdate' (Maybe Text)
etutFields
  = lens _etutFields (\ s a -> s{_etutFields = a})

instance GoogleAuth EditsTestersUpdate' where
        authKey = etutKey . _Just
        authToken = etutOAuthToken . _Just

instance GoogleRequest EditsTestersUpdate' where
        type Rs EditsTestersUpdate' = Testers
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsTestersUpdate'{..}
          = go _etutPackageName _etutEditId _etutTrack
              _etutQuotaUser
              (Just _etutPrettyPrint)
              _etutUserIP
              _etutFields
              _etutKey
              _etutOAuthToken
              (Just AltJSON)
              _etutPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTestersUpdateResource)
                      r
                      u
