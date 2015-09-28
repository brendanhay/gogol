{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Testers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.testers.update@.
module Network.Google.API.Androidpublisher.Edits.Testers.Update
    (
    -- * REST Resource
      EditsTestersUpdateAPI

    -- * Creating a Request
    , editsTestersUpdate'
    , EditsTestersUpdate'

    -- * Request Lenses
    , etuQuotaUser
    , etuTrack
    , etuPrettyPrint
    , etuPackageName
    , etuUserIp
    , etuKey
    , etuOauthToken
    , etuEditId
    , etuFields
    , etuAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.testers.update which the
-- 'EditsTestersUpdate'' request conforms to.
type EditsTestersUpdateAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "testers" :>
             Capture "track" EditsTestersUpdate'Track :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Put '[JSON] Testers

--
-- /See:/ 'editsTestersUpdate'' smart constructor.
data EditsTestersUpdate' = EditsTestersUpdate'
    { _etuQuotaUser   :: !(Maybe Text)
    , _etuTrack       :: !EditsTestersUpdate'Track
    , _etuPrettyPrint :: !Bool
    , _etuPackageName :: !Text
    , _etuUserIp      :: !(Maybe Text)
    , _etuKey         :: !(Maybe Text)
    , _etuOauthToken  :: !(Maybe Text)
    , _etuEditId      :: !Text
    , _etuFields      :: !(Maybe Text)
    , _etuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTestersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etuQuotaUser'
--
-- * 'etuTrack'
--
-- * 'etuPrettyPrint'
--
-- * 'etuPackageName'
--
-- * 'etuUserIp'
--
-- * 'etuKey'
--
-- * 'etuOauthToken'
--
-- * 'etuEditId'
--
-- * 'etuFields'
--
-- * 'etuAlt'
editsTestersUpdate'
    :: EditsTestersUpdate'Track -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTestersUpdate'
editsTestersUpdate' pEtuTrack_ pEtuPackageName_ pEtuEditId_ =
    EditsTestersUpdate'
    { _etuQuotaUser = Nothing
    , _etuTrack = pEtuTrack_
    , _etuPrettyPrint = True
    , _etuPackageName = pEtuPackageName_
    , _etuUserIp = Nothing
    , _etuKey = Nothing
    , _etuOauthToken = Nothing
    , _etuEditId = pEtuEditId_
    , _etuFields = Nothing
    , _etuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etuQuotaUser :: Lens' EditsTestersUpdate' (Maybe Text)
etuQuotaUser
  = lens _etuQuotaUser (\ s a -> s{_etuQuotaUser = a})

etuTrack :: Lens' EditsTestersUpdate' EditsTestersUpdate'Track
etuTrack = lens _etuTrack (\ s a -> s{_etuTrack = a})

-- | Returns response with indentations and line breaks.
etuPrettyPrint :: Lens' EditsTestersUpdate' Bool
etuPrettyPrint
  = lens _etuPrettyPrint
      (\ s a -> s{_etuPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etuPackageName :: Lens' EditsTestersUpdate' Text
etuPackageName
  = lens _etuPackageName
      (\ s a -> s{_etuPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etuUserIp :: Lens' EditsTestersUpdate' (Maybe Text)
etuUserIp
  = lens _etuUserIp (\ s a -> s{_etuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etuKey :: Lens' EditsTestersUpdate' (Maybe Text)
etuKey = lens _etuKey (\ s a -> s{_etuKey = a})

-- | OAuth 2.0 token for the current user.
etuOauthToken :: Lens' EditsTestersUpdate' (Maybe Text)
etuOauthToken
  = lens _etuOauthToken
      (\ s a -> s{_etuOauthToken = a})

-- | Unique identifier for this edit.
etuEditId :: Lens' EditsTestersUpdate' Text
etuEditId
  = lens _etuEditId (\ s a -> s{_etuEditId = a})

-- | Selector specifying which fields to include in a partial response.
etuFields :: Lens' EditsTestersUpdate' (Maybe Text)
etuFields
  = lens _etuFields (\ s a -> s{_etuFields = a})

-- | Data format for the response.
etuAlt :: Lens' EditsTestersUpdate' Alt
etuAlt = lens _etuAlt (\ s a -> s{_etuAlt = a})

instance GoogleRequest EditsTestersUpdate' where
        type Rs EditsTestersUpdate' = Testers
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsTestersUpdate'{..}
          = go _etuQuotaUser _etuTrack (Just _etuPrettyPrint)
              _etuPackageName
              _etuUserIp
              _etuKey
              _etuOauthToken
              _etuEditId
              _etuFields
              (Just _etuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTestersUpdateAPI)
                      r
                      u
