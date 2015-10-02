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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns all of the localized store listings attached to this edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsListingsList@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.List
    (
    -- * REST Resource
      EditsListingsListResource

    -- * Creating a Request
    , editsListingsList'
    , EditsListingsList'

    -- * Request Lenses
    , ellQuotaUser
    , ellPrettyPrint
    , ellPackageName
    , ellUserIP
    , ellKey
    , ellOAuthToken
    , ellEditId
    , ellFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsListingsList@ which the
-- 'EditsListingsList'' request conforms to.
type EditsListingsListResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListingsListResponse

-- | Returns all of the localized store listings attached to this edit.
--
-- /See:/ 'editsListingsList'' smart constructor.
data EditsListingsList' = EditsListingsList'
    { _ellQuotaUser   :: !(Maybe Text)
    , _ellPrettyPrint :: !Bool
    , _ellPackageName :: !Text
    , _ellUserIP      :: !(Maybe Text)
    , _ellKey         :: !(Maybe Key)
    , _ellOAuthToken  :: !(Maybe OAuthToken)
    , _ellEditId      :: !Text
    , _ellFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ellQuotaUser'
--
-- * 'ellPrettyPrint'
--
-- * 'ellPackageName'
--
-- * 'ellUserIP'
--
-- * 'ellKey'
--
-- * 'ellOAuthToken'
--
-- * 'ellEditId'
--
-- * 'ellFields'
editsListingsList'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsListingsList'
editsListingsList' pEllPackageName_ pEllEditId_ =
    EditsListingsList'
    { _ellQuotaUser = Nothing
    , _ellPrettyPrint = True
    , _ellPackageName = pEllPackageName_
    , _ellUserIP = Nothing
    , _ellKey = Nothing
    , _ellOAuthToken = Nothing
    , _ellEditId = pEllEditId_
    , _ellFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ellQuotaUser :: Lens' EditsListingsList' (Maybe Text)
ellQuotaUser
  = lens _ellQuotaUser (\ s a -> s{_ellQuotaUser = a})

-- | Returns response with indentations and line breaks.
ellPrettyPrint :: Lens' EditsListingsList' Bool
ellPrettyPrint
  = lens _ellPrettyPrint
      (\ s a -> s{_ellPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ellPackageName :: Lens' EditsListingsList' Text
ellPackageName
  = lens _ellPackageName
      (\ s a -> s{_ellPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ellUserIP :: Lens' EditsListingsList' (Maybe Text)
ellUserIP
  = lens _ellUserIP (\ s a -> s{_ellUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ellKey :: Lens' EditsListingsList' (Maybe Key)
ellKey = lens _ellKey (\ s a -> s{_ellKey = a})

-- | OAuth 2.0 token for the current user.
ellOAuthToken :: Lens' EditsListingsList' (Maybe OAuthToken)
ellOAuthToken
  = lens _ellOAuthToken
      (\ s a -> s{_ellOAuthToken = a})

-- | Unique identifier for this edit.
ellEditId :: Lens' EditsListingsList' Text
ellEditId
  = lens _ellEditId (\ s a -> s{_ellEditId = a})

-- | Selector specifying which fields to include in a partial response.
ellFields :: Lens' EditsListingsList' (Maybe Text)
ellFields
  = lens _ellFields (\ s a -> s{_ellFields = a})

instance GoogleAuth EditsListingsList' where
        authKey = ellKey . _Just
        authToken = ellOAuthToken . _Just

instance GoogleRequest EditsListingsList' where
        type Rs EditsListingsList' = ListingsListResponse
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsListingsList'{..}
          = go _ellQuotaUser (Just _ellPrettyPrint)
              _ellPackageName
              _ellUserIP
              _ellKey
              _ellOAuthToken
              _ellEditId
              _ellFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsListingsListResource)
                      r
                      u
