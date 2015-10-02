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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Testers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsTestersGet@.
module Network.Google.Resource.AndroidPublisher.Edits.Testers.Get
    (
    -- * REST Resource
      EditsTestersGetResource

    -- * Creating a Request
    , editsTestersGet'
    , EditsTestersGet'

    -- * Request Lenses
    , etgtQuotaUser
    , etgtTrack
    , etgtPrettyPrint
    , etgtPackageName
    , etgtUserIP
    , etgtKey
    , etgtOAuthToken
    , etgtEditId
    , etgtFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsTestersGet@ which the
-- 'EditsTestersGet'' request conforms to.
type EditsTestersGetResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "testers" :>
             Capture "track" AndroidPublisherEditsTestersGetTrack
               :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Testers

--
-- /See:/ 'editsTestersGet'' smart constructor.
data EditsTestersGet' = EditsTestersGet'
    { _etgtQuotaUser   :: !(Maybe Text)
    , _etgtTrack       :: !AndroidPublisherEditsTestersGetTrack
    , _etgtPrettyPrint :: !Bool
    , _etgtPackageName :: !Text
    , _etgtUserIP      :: !(Maybe Text)
    , _etgtKey         :: !(Maybe Key)
    , _etgtOAuthToken  :: !(Maybe OAuthToken)
    , _etgtEditId      :: !Text
    , _etgtFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTestersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etgtQuotaUser'
--
-- * 'etgtTrack'
--
-- * 'etgtPrettyPrint'
--
-- * 'etgtPackageName'
--
-- * 'etgtUserIP'
--
-- * 'etgtKey'
--
-- * 'etgtOAuthToken'
--
-- * 'etgtEditId'
--
-- * 'etgtFields'
editsTestersGet'
    :: AndroidPublisherEditsTestersGetTrack -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTestersGet'
editsTestersGet' pEtgtTrack_ pEtgtPackageName_ pEtgtEditId_ =
    EditsTestersGet'
    { _etgtQuotaUser = Nothing
    , _etgtTrack = pEtgtTrack_
    , _etgtPrettyPrint = True
    , _etgtPackageName = pEtgtPackageName_
    , _etgtUserIP = Nothing
    , _etgtKey = Nothing
    , _etgtOAuthToken = Nothing
    , _etgtEditId = pEtgtEditId_
    , _etgtFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etgtQuotaUser :: Lens' EditsTestersGet' (Maybe Text)
etgtQuotaUser
  = lens _etgtQuotaUser
      (\ s a -> s{_etgtQuotaUser = a})

etgtTrack :: Lens' EditsTestersGet' AndroidPublisherEditsTestersGetTrack
etgtTrack
  = lens _etgtTrack (\ s a -> s{_etgtTrack = a})

-- | Returns response with indentations and line breaks.
etgtPrettyPrint :: Lens' EditsTestersGet' Bool
etgtPrettyPrint
  = lens _etgtPrettyPrint
      (\ s a -> s{_etgtPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etgtPackageName :: Lens' EditsTestersGet' Text
etgtPackageName
  = lens _etgtPackageName
      (\ s a -> s{_etgtPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etgtUserIP :: Lens' EditsTestersGet' (Maybe Text)
etgtUserIP
  = lens _etgtUserIP (\ s a -> s{_etgtUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etgtKey :: Lens' EditsTestersGet' (Maybe Key)
etgtKey = lens _etgtKey (\ s a -> s{_etgtKey = a})

-- | OAuth 2.0 token for the current user.
etgtOAuthToken :: Lens' EditsTestersGet' (Maybe OAuthToken)
etgtOAuthToken
  = lens _etgtOAuthToken
      (\ s a -> s{_etgtOAuthToken = a})

-- | Unique identifier for this edit.
etgtEditId :: Lens' EditsTestersGet' Text
etgtEditId
  = lens _etgtEditId (\ s a -> s{_etgtEditId = a})

-- | Selector specifying which fields to include in a partial response.
etgtFields :: Lens' EditsTestersGet' (Maybe Text)
etgtFields
  = lens _etgtFields (\ s a -> s{_etgtFields = a})

instance GoogleAuth EditsTestersGet' where
        authKey = etgtKey . _Just
        authToken = etgtOAuthToken . _Just

instance GoogleRequest EditsTestersGet' where
        type Rs EditsTestersGet' = Testers
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsTestersGet'{..}
          = go _etgtQuotaUser _etgtTrack
              (Just _etgtPrettyPrint)
              _etgtPackageName
              _etgtUserIP
              _etgtKey
              _etgtOAuthToken
              _etgtEditId
              _etgtFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTestersGetResource)
                      r
                      u
