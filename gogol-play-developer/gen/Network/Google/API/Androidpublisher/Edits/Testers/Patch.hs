{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Testers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.testers.patch@.
module Network.Google.API.Androidpublisher.Edits.Testers.Patch
    (
    -- * REST Resource
      EditsTestersPatchAPI

    -- * Creating a Request
    , editsTestersPatch'
    , EditsTestersPatch'

    -- * Request Lenses
    , etpQuotaUser
    , etpTrack
    , etpPrettyPrint
    , etpPackageName
    , etpUserIp
    , etpKey
    , etpOauthToken
    , etpEditId
    , etpFields
    , etpAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.testers.patch which the
-- 'EditsTestersPatch'' request conforms to.
type EditsTestersPatchAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "testers" :>
             Capture "track" EditsTestersPatch'Track :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Patch '[JSON] Testers

--
-- /See:/ 'editsTestersPatch'' smart constructor.
data EditsTestersPatch' = EditsTestersPatch'
    { _etpQuotaUser   :: !(Maybe Text)
    , _etpTrack       :: !EditsTestersPatch'Track
    , _etpPrettyPrint :: !Bool
    , _etpPackageName :: !Text
    , _etpUserIp      :: !(Maybe Text)
    , _etpKey         :: !(Maybe Text)
    , _etpOauthToken  :: !(Maybe Text)
    , _etpEditId      :: !Text
    , _etpFields      :: !(Maybe Text)
    , _etpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTestersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etpQuotaUser'
--
-- * 'etpTrack'
--
-- * 'etpPrettyPrint'
--
-- * 'etpPackageName'
--
-- * 'etpUserIp'
--
-- * 'etpKey'
--
-- * 'etpOauthToken'
--
-- * 'etpEditId'
--
-- * 'etpFields'
--
-- * 'etpAlt'
editsTestersPatch'
    :: EditsTestersPatch'Track -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTestersPatch'
editsTestersPatch' pEtpTrack_ pEtpPackageName_ pEtpEditId_ =
    EditsTestersPatch'
    { _etpQuotaUser = Nothing
    , _etpTrack = pEtpTrack_
    , _etpPrettyPrint = True
    , _etpPackageName = pEtpPackageName_
    , _etpUserIp = Nothing
    , _etpKey = Nothing
    , _etpOauthToken = Nothing
    , _etpEditId = pEtpEditId_
    , _etpFields = Nothing
    , _etpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etpQuotaUser :: Lens' EditsTestersPatch' (Maybe Text)
etpQuotaUser
  = lens _etpQuotaUser (\ s a -> s{_etpQuotaUser = a})

etpTrack :: Lens' EditsTestersPatch' EditsTestersPatch'Track
etpTrack = lens _etpTrack (\ s a -> s{_etpTrack = a})

-- | Returns response with indentations and line breaks.
etpPrettyPrint :: Lens' EditsTestersPatch' Bool
etpPrettyPrint
  = lens _etpPrettyPrint
      (\ s a -> s{_etpPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etpPackageName :: Lens' EditsTestersPatch' Text
etpPackageName
  = lens _etpPackageName
      (\ s a -> s{_etpPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etpUserIp :: Lens' EditsTestersPatch' (Maybe Text)
etpUserIp
  = lens _etpUserIp (\ s a -> s{_etpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etpKey :: Lens' EditsTestersPatch' (Maybe Text)
etpKey = lens _etpKey (\ s a -> s{_etpKey = a})

-- | OAuth 2.0 token for the current user.
etpOauthToken :: Lens' EditsTestersPatch' (Maybe Text)
etpOauthToken
  = lens _etpOauthToken
      (\ s a -> s{_etpOauthToken = a})

-- | Unique identifier for this edit.
etpEditId :: Lens' EditsTestersPatch' Text
etpEditId
  = lens _etpEditId (\ s a -> s{_etpEditId = a})

-- | Selector specifying which fields to include in a partial response.
etpFields :: Lens' EditsTestersPatch' (Maybe Text)
etpFields
  = lens _etpFields (\ s a -> s{_etpFields = a})

-- | Data format for the response.
etpAlt :: Lens' EditsTestersPatch' Alt
etpAlt = lens _etpAlt (\ s a -> s{_etpAlt = a})

instance GoogleRequest EditsTestersPatch' where
        type Rs EditsTestersPatch' = Testers
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsTestersPatch'{..}
          = go _etpQuotaUser _etpTrack (Just _etpPrettyPrint)
              _etpPackageName
              _etpUserIp
              _etpKey
              _etpOauthToken
              _etpEditId
              _etpFields
              (Just _etpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTestersPatchAPI)
                      r
                      u
