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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Details.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetches app details for this edit. This includes the default language
-- and developer support contact information.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsDetailsGet@.
module Network.Google.Resource.AndroidPublisher.Edits.Details.Get
    (
    -- * REST Resource
      EditsDetailsGetResource

    -- * Creating a Request
    , editsDetailsGet'
    , EditsDetailsGet'

    -- * Request Lenses
    , edgQuotaUser
    , edgPrettyPrint
    , edgPackageName
    , edgUserIP
    , edgKey
    , edgOAuthToken
    , edgEditId
    , edgFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsDetailsGet@ method which the
-- 'EditsDetailsGet'' request conforms to.
type EditsDetailsGetResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "details" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] AppDetails

-- | Fetches app details for this edit. This includes the default language
-- and developer support contact information.
--
-- /See:/ 'editsDetailsGet'' smart constructor.
data EditsDetailsGet' = EditsDetailsGet'
    { _edgQuotaUser   :: !(Maybe Text)
    , _edgPrettyPrint :: !Bool
    , _edgPackageName :: !Text
    , _edgUserIP      :: !(Maybe Text)
    , _edgKey         :: !(Maybe AuthKey)
    , _edgOAuthToken  :: !(Maybe OAuthToken)
    , _edgEditId      :: !Text
    , _edgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsDetailsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edgQuotaUser'
--
-- * 'edgPrettyPrint'
--
-- * 'edgPackageName'
--
-- * 'edgUserIP'
--
-- * 'edgKey'
--
-- * 'edgOAuthToken'
--
-- * 'edgEditId'
--
-- * 'edgFields'
editsDetailsGet'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsDetailsGet'
editsDetailsGet' pEdgPackageName_ pEdgEditId_ =
    EditsDetailsGet'
    { _edgQuotaUser = Nothing
    , _edgPrettyPrint = True
    , _edgPackageName = pEdgPackageName_
    , _edgUserIP = Nothing
    , _edgKey = Nothing
    , _edgOAuthToken = Nothing
    , _edgEditId = pEdgEditId_
    , _edgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
edgQuotaUser :: Lens' EditsDetailsGet' (Maybe Text)
edgQuotaUser
  = lens _edgQuotaUser (\ s a -> s{_edgQuotaUser = a})

-- | Returns response with indentations and line breaks.
edgPrettyPrint :: Lens' EditsDetailsGet' Bool
edgPrettyPrint
  = lens _edgPrettyPrint
      (\ s a -> s{_edgPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
edgPackageName :: Lens' EditsDetailsGet' Text
edgPackageName
  = lens _edgPackageName
      (\ s a -> s{_edgPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
edgUserIP :: Lens' EditsDetailsGet' (Maybe Text)
edgUserIP
  = lens _edgUserIP (\ s a -> s{_edgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
edgKey :: Lens' EditsDetailsGet' (Maybe AuthKey)
edgKey = lens _edgKey (\ s a -> s{_edgKey = a})

-- | OAuth 2.0 token for the current user.
edgOAuthToken :: Lens' EditsDetailsGet' (Maybe OAuthToken)
edgOAuthToken
  = lens _edgOAuthToken
      (\ s a -> s{_edgOAuthToken = a})

-- | Unique identifier for this edit.
edgEditId :: Lens' EditsDetailsGet' Text
edgEditId
  = lens _edgEditId (\ s a -> s{_edgEditId = a})

-- | Selector specifying which fields to include in a partial response.
edgFields :: Lens' EditsDetailsGet' (Maybe Text)
edgFields
  = lens _edgFields (\ s a -> s{_edgFields = a})

instance GoogleAuth EditsDetailsGet' where
        _AuthKey = edgKey . _Just
        _AuthToken = edgOAuthToken . _Just

instance GoogleRequest EditsDetailsGet' where
        type Rs EditsDetailsGet' = AppDetails
        request = requestWith androidPublisherRequest
        requestWith rq EditsDetailsGet'{..}
          = go _edgPackageName _edgEditId _edgQuotaUser
              (Just _edgPrettyPrint)
              _edgUserIP
              _edgFields
              _edgKey
              _edgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy EditsDetailsGetResource)
                      rq
