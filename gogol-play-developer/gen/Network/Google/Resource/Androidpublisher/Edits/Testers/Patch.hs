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
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Testers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsTestersPatch@.
module Network.Google.Resource.Androidpublisher.Edits.Testers.Patch
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
    , etptUserIp
    , etptKey
    , etptOauthToken
    , etptEditId
    , etptFields
    , etptAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsTestersPatch@ which the
-- 'EditsTestersPatch'' request conforms to.
type EditsTestersPatchResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "testers" :>
             Capture "track"
               AndroidpublisherEditsTestersPatchTrack
               :>
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
    { _etptQuotaUser   :: !(Maybe Text)
    , _etptTrack       :: !AndroidpublisherEditsTestersPatchTrack
    , _etptPrettyPrint :: !Bool
    , _etptPackageName :: !Text
    , _etptUserIp      :: !(Maybe Text)
    , _etptKey         :: !(Maybe Text)
    , _etptOauthToken  :: !(Maybe Text)
    , _etptEditId      :: !Text
    , _etptFields      :: !(Maybe Text)
    , _etptAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'etptUserIp'
--
-- * 'etptKey'
--
-- * 'etptOauthToken'
--
-- * 'etptEditId'
--
-- * 'etptFields'
--
-- * 'etptAlt'
editsTestersPatch'
    :: AndroidpublisherEditsTestersPatchTrack -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTestersPatch'
editsTestersPatch' pEtptTrack_ pEtptPackageName_ pEtptEditId_ =
    EditsTestersPatch'
    { _etptQuotaUser = Nothing
    , _etptTrack = pEtptTrack_
    , _etptPrettyPrint = True
    , _etptPackageName = pEtptPackageName_
    , _etptUserIp = Nothing
    , _etptKey = Nothing
    , _etptOauthToken = Nothing
    , _etptEditId = pEtptEditId_
    , _etptFields = Nothing
    , _etptAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etptQuotaUser :: Lens' EditsTestersPatch' (Maybe Text)
etptQuotaUser
  = lens _etptQuotaUser
      (\ s a -> s{_etptQuotaUser = a})

etptTrack :: Lens' EditsTestersPatch' AndroidpublisherEditsTestersPatchTrack
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
etptUserIp :: Lens' EditsTestersPatch' (Maybe Text)
etptUserIp
  = lens _etptUserIp (\ s a -> s{_etptUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etptKey :: Lens' EditsTestersPatch' (Maybe Text)
etptKey = lens _etptKey (\ s a -> s{_etptKey = a})

-- | OAuth 2.0 token for the current user.
etptOauthToken :: Lens' EditsTestersPatch' (Maybe Text)
etptOauthToken
  = lens _etptOauthToken
      (\ s a -> s{_etptOauthToken = a})

-- | Unique identifier for this edit.
etptEditId :: Lens' EditsTestersPatch' Text
etptEditId
  = lens _etptEditId (\ s a -> s{_etptEditId = a})

-- | Selector specifying which fields to include in a partial response.
etptFields :: Lens' EditsTestersPatch' (Maybe Text)
etptFields
  = lens _etptFields (\ s a -> s{_etptFields = a})

-- | Data format for the response.
etptAlt :: Lens' EditsTestersPatch' Alt
etptAlt = lens _etptAlt (\ s a -> s{_etptAlt = a})

instance GoogleRequest EditsTestersPatch' where
        type Rs EditsTestersPatch' = Testers
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsTestersPatch'{..}
          = go _etptQuotaUser _etptTrack
              (Just _etptPrettyPrint)
              _etptPackageName
              _etptUserIp
              _etptKey
              _etptOauthToken
              _etptEditId
              _etptFields
              (Just _etptAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTestersPatchResource)
                      r
                      u
