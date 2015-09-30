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
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Details.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates app details for this edit. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsDetailsPatch@.
module Network.Google.Resource.Androidpublisher.Edits.Details.Patch
    (
    -- * REST Resource
      EditsDetailsPatchResource

    -- * Creating a Request
    , editsDetailsPatch'
    , EditsDetailsPatch'

    -- * Request Lenses
    , edpQuotaUser
    , edpPrettyPrint
    , edpPackageName
    , edpUserIp
    , edpKey
    , edpOauthToken
    , edpEditId
    , edpFields
    , edpAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsDetailsPatch@ which the
-- 'EditsDetailsPatch'' request conforms to.
type EditsDetailsPatchResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "details" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] AppDetails

-- | Updates app details for this edit. This method supports patch semantics.
--
-- /See:/ 'editsDetailsPatch'' smart constructor.
data EditsDetailsPatch' = EditsDetailsPatch'
    { _edpQuotaUser   :: !(Maybe Text)
    , _edpPrettyPrint :: !Bool
    , _edpPackageName :: !Text
    , _edpUserIp      :: !(Maybe Text)
    , _edpKey         :: !(Maybe Text)
    , _edpOauthToken  :: !(Maybe Text)
    , _edpEditId      :: !Text
    , _edpFields      :: !(Maybe Text)
    , _edpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsDetailsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edpQuotaUser'
--
-- * 'edpPrettyPrint'
--
-- * 'edpPackageName'
--
-- * 'edpUserIp'
--
-- * 'edpKey'
--
-- * 'edpOauthToken'
--
-- * 'edpEditId'
--
-- * 'edpFields'
--
-- * 'edpAlt'
editsDetailsPatch'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsDetailsPatch'
editsDetailsPatch' pEdpPackageName_ pEdpEditId_ =
    EditsDetailsPatch'
    { _edpQuotaUser = Nothing
    , _edpPrettyPrint = True
    , _edpPackageName = pEdpPackageName_
    , _edpUserIp = Nothing
    , _edpKey = Nothing
    , _edpOauthToken = Nothing
    , _edpEditId = pEdpEditId_
    , _edpFields = Nothing
    , _edpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
edpQuotaUser :: Lens' EditsDetailsPatch' (Maybe Text)
edpQuotaUser
  = lens _edpQuotaUser (\ s a -> s{_edpQuotaUser = a})

-- | Returns response with indentations and line breaks.
edpPrettyPrint :: Lens' EditsDetailsPatch' Bool
edpPrettyPrint
  = lens _edpPrettyPrint
      (\ s a -> s{_edpPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
edpPackageName :: Lens' EditsDetailsPatch' Text
edpPackageName
  = lens _edpPackageName
      (\ s a -> s{_edpPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
edpUserIp :: Lens' EditsDetailsPatch' (Maybe Text)
edpUserIp
  = lens _edpUserIp (\ s a -> s{_edpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
edpKey :: Lens' EditsDetailsPatch' (Maybe Text)
edpKey = lens _edpKey (\ s a -> s{_edpKey = a})

-- | OAuth 2.0 token for the current user.
edpOauthToken :: Lens' EditsDetailsPatch' (Maybe Text)
edpOauthToken
  = lens _edpOauthToken
      (\ s a -> s{_edpOauthToken = a})

-- | Unique identifier for this edit.
edpEditId :: Lens' EditsDetailsPatch' Text
edpEditId
  = lens _edpEditId (\ s a -> s{_edpEditId = a})

-- | Selector specifying which fields to include in a partial response.
edpFields :: Lens' EditsDetailsPatch' (Maybe Text)
edpFields
  = lens _edpFields (\ s a -> s{_edpFields = a})

-- | Data format for the response.
edpAlt :: Lens' EditsDetailsPatch' Alt
edpAlt = lens _edpAlt (\ s a -> s{_edpAlt = a})

instance GoogleRequest EditsDetailsPatch' where
        type Rs EditsDetailsPatch' = AppDetails
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsDetailsPatch'{..}
          = go _edpQuotaUser (Just _edpPrettyPrint)
              _edpPackageName
              _edpUserIp
              _edpKey
              _edpOauthToken
              _edpEditId
              _edpFields
              (Just _edpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsDetailsPatchResource)
                      r
                      u
