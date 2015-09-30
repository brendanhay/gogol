{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Testers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsTestersGet@.
module Androidpublisher.Edits.Testers.Get
    (
    -- * REST Resource
      EditsTestersGetAPI

    -- * Creating a Request
    , editsTestersGet
    , EditsTestersGet

    -- * Request Lenses
    , etgtQuotaUser
    , etgtTrack
    , etgtPrettyPrint
    , etgtPackageName
    , etgtUserIp
    , etgtKey
    , etgtOauthToken
    , etgtEditId
    , etgtFields
    , etgtAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsTestersGet@ which the
-- 'EditsTestersGet' request conforms to.
type EditsTestersGetAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "testers" :>
             Capture "track" Text :> Get '[JSON] Testers

--
-- /See:/ 'editsTestersGet' smart constructor.
data EditsTestersGet = EditsTestersGet
    { _etgtQuotaUser   :: !(Maybe Text)
    , _etgtTrack       :: !Text
    , _etgtPrettyPrint :: !Bool
    , _etgtPackageName :: !Text
    , _etgtUserIp      :: !(Maybe Text)
    , _etgtKey         :: !(Maybe Text)
    , _etgtOauthToken  :: !(Maybe Text)
    , _etgtEditId      :: !Text
    , _etgtFields      :: !(Maybe Text)
    , _etgtAlt         :: !Text
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
-- * 'etgtUserIp'
--
-- * 'etgtKey'
--
-- * 'etgtOauthToken'
--
-- * 'etgtEditId'
--
-- * 'etgtFields'
--
-- * 'etgtAlt'
editsTestersGet
    :: Text -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTestersGet
editsTestersGet pEtgtTrack_ pEtgtPackageName_ pEtgtEditId_ =
    EditsTestersGet
    { _etgtQuotaUser = Nothing
    , _etgtTrack = pEtgtTrack_
    , _etgtPrettyPrint = True
    , _etgtPackageName = pEtgtPackageName_
    , _etgtUserIp = Nothing
    , _etgtKey = Nothing
    , _etgtOauthToken = Nothing
    , _etgtEditId = pEtgtEditId_
    , _etgtFields = Nothing
    , _etgtAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etgtQuotaUser :: Lens' EditsTestersGet' (Maybe Text)
etgtQuotaUser
  = lens _etgtQuotaUser
      (\ s a -> s{_etgtQuotaUser = a})

etgtTrack :: Lens' EditsTestersGet' Text
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
etgtUserIp :: Lens' EditsTestersGet' (Maybe Text)
etgtUserIp
  = lens _etgtUserIp (\ s a -> s{_etgtUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etgtKey :: Lens' EditsTestersGet' (Maybe Text)
etgtKey = lens _etgtKey (\ s a -> s{_etgtKey = a})

-- | OAuth 2.0 token for the current user.
etgtOauthToken :: Lens' EditsTestersGet' (Maybe Text)
etgtOauthToken
  = lens _etgtOauthToken
      (\ s a -> s{_etgtOauthToken = a})

-- | Unique identifier for this edit.
etgtEditId :: Lens' EditsTestersGet' Text
etgtEditId
  = lens _etgtEditId (\ s a -> s{_etgtEditId = a})

-- | Selector specifying which fields to include in a partial response.
etgtFields :: Lens' EditsTestersGet' (Maybe Text)
etgtFields
  = lens _etgtFields (\ s a -> s{_etgtFields = a})

-- | Data format for the response.
etgtAlt :: Lens' EditsTestersGet' Text
etgtAlt = lens _etgtAlt (\ s a -> s{_etgtAlt = a})

instance GoogleRequest EditsTestersGet' where
        type Rs EditsTestersGet' = Testers
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsTestersGet{..}
          = go _etgtQuotaUser _etgtTrack _etgtPrettyPrint
              _etgtPackageName
              _etgtUserIp
              _etgtKey
              _etgtOauthToken
              _etgtEditId
              _etgtFields
              _etgtAlt
          where go
                  = clientWithRoute (Proxy :: Proxy EditsTestersGetAPI)
                      r
                      u
