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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Details.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates app details for this edit. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsDetailsPatch@.
module Network.Google.Resource.AndroidPublisher.Edits.Details.Patch
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
    , edpUserIP
    , edpPayload
    , edpKey
    , edpOAuthToken
    , edpEditId
    , edpFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsDetailsPatch@ method which the
-- 'EditsDetailsPatch'' request conforms to.
type EditsDetailsPatchResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "details" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AppDetails :>
                             Patch '[JSON] AppDetails

-- | Updates app details for this edit. This method supports patch semantics.
--
-- /See:/ 'editsDetailsPatch'' smart constructor.
data EditsDetailsPatch' = EditsDetailsPatch'
    { _edpQuotaUser   :: !(Maybe Text)
    , _edpPrettyPrint :: !Bool
    , _edpPackageName :: !Text
    , _edpUserIP      :: !(Maybe Text)
    , _edpPayload     :: !AppDetails
    , _edpKey         :: !(Maybe AuthKey)
    , _edpOAuthToken  :: !(Maybe OAuthToken)
    , _edpEditId      :: !Text
    , _edpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'edpUserIP'
--
-- * 'edpPayload'
--
-- * 'edpKey'
--
-- * 'edpOAuthToken'
--
-- * 'edpEditId'
--
-- * 'edpFields'
editsDetailsPatch'
    :: Text -- ^ 'packageName'
    -> AppDetails -- ^ 'payload'
    -> Text -- ^ 'editId'
    -> EditsDetailsPatch'
editsDetailsPatch' pEdpPackageName_ pEdpPayload_ pEdpEditId_ =
    EditsDetailsPatch'
    { _edpQuotaUser = Nothing
    , _edpPrettyPrint = True
    , _edpPackageName = pEdpPackageName_
    , _edpUserIP = Nothing
    , _edpPayload = pEdpPayload_
    , _edpKey = Nothing
    , _edpOAuthToken = Nothing
    , _edpEditId = pEdpEditId_
    , _edpFields = Nothing
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
edpUserIP :: Lens' EditsDetailsPatch' (Maybe Text)
edpUserIP
  = lens _edpUserIP (\ s a -> s{_edpUserIP = a})

-- | Multipart request metadata.
edpPayload :: Lens' EditsDetailsPatch' AppDetails
edpPayload
  = lens _edpPayload (\ s a -> s{_edpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
edpKey :: Lens' EditsDetailsPatch' (Maybe AuthKey)
edpKey = lens _edpKey (\ s a -> s{_edpKey = a})

-- | OAuth 2.0 token for the current user.
edpOAuthToken :: Lens' EditsDetailsPatch' (Maybe OAuthToken)
edpOAuthToken
  = lens _edpOAuthToken
      (\ s a -> s{_edpOAuthToken = a})

-- | Unique identifier for this edit.
edpEditId :: Lens' EditsDetailsPatch' Text
edpEditId
  = lens _edpEditId (\ s a -> s{_edpEditId = a})

-- | Selector specifying which fields to include in a partial response.
edpFields :: Lens' EditsDetailsPatch' (Maybe Text)
edpFields
  = lens _edpFields (\ s a -> s{_edpFields = a})

instance GoogleAuth EditsDetailsPatch' where
        _AuthKey = edpKey . _Just
        _AuthToken = edpOAuthToken . _Just

instance GoogleRequest EditsDetailsPatch' where
        type Rs EditsDetailsPatch' = AppDetails
        request = requestWith androidPublisherRequest
        requestWith rq EditsDetailsPatch'{..}
          = go _edpPackageName _edpEditId _edpQuotaUser
              (Just _edpPrettyPrint)
              _edpUserIP
              _edpFields
              _edpKey
              _edpOAuthToken
              (Just AltJSON)
              _edpPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy EditsDetailsPatchResource)
                      rq
