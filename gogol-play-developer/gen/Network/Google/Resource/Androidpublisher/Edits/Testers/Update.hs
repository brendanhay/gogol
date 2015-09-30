{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Testers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsTestersUpdate@.
module Androidpublisher.Edits.Testers.Update
    (
    -- * REST Resource
      EditsTestersUpdateAPI

    -- * Creating a Request
    , editsTestersUpdate
    , EditsTestersUpdate

    -- * Request Lenses
    , etutQuotaUser
    , etutTrack
    , etutPrettyPrint
    , etutPackageName
    , etutUserIp
    , etutKey
    , etutOauthToken
    , etutEditId
    , etutFields
    , etutAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsTestersUpdate@ which the
-- 'EditsTestersUpdate' request conforms to.
type EditsTestersUpdateAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "testers" :>
             Capture "track" Text :> Put '[JSON] Testers

--
-- /See:/ 'editsTestersUpdate' smart constructor.
data EditsTestersUpdate = EditsTestersUpdate
    { _etutQuotaUser   :: !(Maybe Text)
    , _etutTrack       :: !Text
    , _etutPrettyPrint :: !Bool
    , _etutPackageName :: !Text
    , _etutUserIp      :: !(Maybe Text)
    , _etutKey         :: !(Maybe Text)
    , _etutOauthToken  :: !(Maybe Text)
    , _etutEditId      :: !Text
    , _etutFields      :: !(Maybe Text)
    , _etutAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'etutUserIp'
--
-- * 'etutKey'
--
-- * 'etutOauthToken'
--
-- * 'etutEditId'
--
-- * 'etutFields'
--
-- * 'etutAlt'
editsTestersUpdate
    :: Text -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTestersUpdate
editsTestersUpdate pEtutTrack_ pEtutPackageName_ pEtutEditId_ =
    EditsTestersUpdate
    { _etutQuotaUser = Nothing
    , _etutTrack = pEtutTrack_
    , _etutPrettyPrint = True
    , _etutPackageName = pEtutPackageName_
    , _etutUserIp = Nothing
    , _etutKey = Nothing
    , _etutOauthToken = Nothing
    , _etutEditId = pEtutEditId_
    , _etutFields = Nothing
    , _etutAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etutQuotaUser :: Lens' EditsTestersUpdate' (Maybe Text)
etutQuotaUser
  = lens _etutQuotaUser
      (\ s a -> s{_etutQuotaUser = a})

etutTrack :: Lens' EditsTestersUpdate' Text
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
etutUserIp :: Lens' EditsTestersUpdate' (Maybe Text)
etutUserIp
  = lens _etutUserIp (\ s a -> s{_etutUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etutKey :: Lens' EditsTestersUpdate' (Maybe Text)
etutKey = lens _etutKey (\ s a -> s{_etutKey = a})

-- | OAuth 2.0 token for the current user.
etutOauthToken :: Lens' EditsTestersUpdate' (Maybe Text)
etutOauthToken
  = lens _etutOauthToken
      (\ s a -> s{_etutOauthToken = a})

-- | Unique identifier for this edit.
etutEditId :: Lens' EditsTestersUpdate' Text
etutEditId
  = lens _etutEditId (\ s a -> s{_etutEditId = a})

-- | Selector specifying which fields to include in a partial response.
etutFields :: Lens' EditsTestersUpdate' (Maybe Text)
etutFields
  = lens _etutFields (\ s a -> s{_etutFields = a})

-- | Data format for the response.
etutAlt :: Lens' EditsTestersUpdate' Text
etutAlt = lens _etutAlt (\ s a -> s{_etutAlt = a})

instance GoogleRequest EditsTestersUpdate' where
        type Rs EditsTestersUpdate' = Testers
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsTestersUpdate{..}
          = go _etutQuotaUser _etutTrack _etutPrettyPrint
              _etutPackageName
              _etutUserIp
              _etutKey
              _etutOauthToken
              _etutEditId
              _etutFields
              _etutAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTestersUpdateAPI)
                      r
                      u
