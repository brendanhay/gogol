{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Details.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates app details for this edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsDetailsUpdate@.
module Androidpublisher.Edits.Details.Update
    (
    -- * REST Resource
      EditsDetailsUpdateAPI

    -- * Creating a Request
    , editsDetailsUpdate
    , EditsDetailsUpdate

    -- * Request Lenses
    , eduQuotaUser
    , eduPrettyPrint
    , eduPackageName
    , eduUserIp
    , eduKey
    , eduOauthToken
    , eduEditId
    , eduFields
    , eduAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsDetailsUpdate@ which the
-- 'EditsDetailsUpdate' request conforms to.
type EditsDetailsUpdateAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "details" :> Put '[JSON] AppDetails

-- | Updates app details for this edit.
--
-- /See:/ 'editsDetailsUpdate' smart constructor.
data EditsDetailsUpdate = EditsDetailsUpdate
    { _eduQuotaUser   :: !(Maybe Text)
    , _eduPrettyPrint :: !Bool
    , _eduPackageName :: !Text
    , _eduUserIp      :: !(Maybe Text)
    , _eduKey         :: !(Maybe Text)
    , _eduOauthToken  :: !(Maybe Text)
    , _eduEditId      :: !Text
    , _eduFields      :: !(Maybe Text)
    , _eduAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsDetailsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eduQuotaUser'
--
-- * 'eduPrettyPrint'
--
-- * 'eduPackageName'
--
-- * 'eduUserIp'
--
-- * 'eduKey'
--
-- * 'eduOauthToken'
--
-- * 'eduEditId'
--
-- * 'eduFields'
--
-- * 'eduAlt'
editsDetailsUpdate
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsDetailsUpdate
editsDetailsUpdate pEduPackageName_ pEduEditId_ =
    EditsDetailsUpdate
    { _eduQuotaUser = Nothing
    , _eduPrettyPrint = True
    , _eduPackageName = pEduPackageName_
    , _eduUserIp = Nothing
    , _eduKey = Nothing
    , _eduOauthToken = Nothing
    , _eduEditId = pEduEditId_
    , _eduFields = Nothing
    , _eduAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eduQuotaUser :: Lens' EditsDetailsUpdate' (Maybe Text)
eduQuotaUser
  = lens _eduQuotaUser (\ s a -> s{_eduQuotaUser = a})

-- | Returns response with indentations and line breaks.
eduPrettyPrint :: Lens' EditsDetailsUpdate' Bool
eduPrettyPrint
  = lens _eduPrettyPrint
      (\ s a -> s{_eduPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eduPackageName :: Lens' EditsDetailsUpdate' Text
eduPackageName
  = lens _eduPackageName
      (\ s a -> s{_eduPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eduUserIp :: Lens' EditsDetailsUpdate' (Maybe Text)
eduUserIp
  = lens _eduUserIp (\ s a -> s{_eduUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eduKey :: Lens' EditsDetailsUpdate' (Maybe Text)
eduKey = lens _eduKey (\ s a -> s{_eduKey = a})

-- | OAuth 2.0 token for the current user.
eduOauthToken :: Lens' EditsDetailsUpdate' (Maybe Text)
eduOauthToken
  = lens _eduOauthToken
      (\ s a -> s{_eduOauthToken = a})

-- | Unique identifier for this edit.
eduEditId :: Lens' EditsDetailsUpdate' Text
eduEditId
  = lens _eduEditId (\ s a -> s{_eduEditId = a})

-- | Selector specifying which fields to include in a partial response.
eduFields :: Lens' EditsDetailsUpdate' (Maybe Text)
eduFields
  = lens _eduFields (\ s a -> s{_eduFields = a})

-- | Data format for the response.
eduAlt :: Lens' EditsDetailsUpdate' Text
eduAlt = lens _eduAlt (\ s a -> s{_eduAlt = a})

instance GoogleRequest EditsDetailsUpdate' where
        type Rs EditsDetailsUpdate' = AppDetails
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsDetailsUpdate{..}
          = go _eduQuotaUser _eduPrettyPrint _eduPackageName
              _eduUserIp
              _eduKey
              _eduOauthToken
              _eduEditId
              _eduFields
              _eduAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsDetailsUpdateAPI)
                      r
                      u
