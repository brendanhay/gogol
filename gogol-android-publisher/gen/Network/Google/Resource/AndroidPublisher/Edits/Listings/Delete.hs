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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified localized store listing from an edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsListingsDelete@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.Delete
    (
    -- * REST Resource
      EditsListingsDeleteResource

    -- * Creating a Request
    , editsListingsDelete'
    , EditsListingsDelete'

    -- * Request Lenses
    , eldQuotaUser
    , eldPrettyPrint
    , eldPackageName
    , eldUserIP
    , eldKey
    , eldLanguage
    , eldOAuthToken
    , eldEditId
    , eldFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsListingsDelete@ which the
-- 'EditsListingsDelete'' request conforms to.
type EditsListingsDeleteResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified localized store listing from an edit.
--
-- /See:/ 'editsListingsDelete'' smart constructor.
data EditsListingsDelete' = EditsListingsDelete'
    { _eldQuotaUser   :: !(Maybe Text)
    , _eldPrettyPrint :: !Bool
    , _eldPackageName :: !Text
    , _eldUserIP      :: !(Maybe Text)
    , _eldKey         :: !(Maybe AuthKey)
    , _eldLanguage    :: !Text
    , _eldOAuthToken  :: !(Maybe OAuthToken)
    , _eldEditId      :: !Text
    , _eldFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eldQuotaUser'
--
-- * 'eldPrettyPrint'
--
-- * 'eldPackageName'
--
-- * 'eldUserIP'
--
-- * 'eldKey'
--
-- * 'eldLanguage'
--
-- * 'eldOAuthToken'
--
-- * 'eldEditId'
--
-- * 'eldFields'
editsListingsDelete'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsListingsDelete'
editsListingsDelete' pEldPackageName_ pEldLanguage_ pEldEditId_ =
    EditsListingsDelete'
    { _eldQuotaUser = Nothing
    , _eldPrettyPrint = True
    , _eldPackageName = pEldPackageName_
    , _eldUserIP = Nothing
    , _eldKey = Nothing
    , _eldLanguage = pEldLanguage_
    , _eldOAuthToken = Nothing
    , _eldEditId = pEldEditId_
    , _eldFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eldQuotaUser :: Lens' EditsListingsDelete' (Maybe Text)
eldQuotaUser
  = lens _eldQuotaUser (\ s a -> s{_eldQuotaUser = a})

-- | Returns response with indentations and line breaks.
eldPrettyPrint :: Lens' EditsListingsDelete' Bool
eldPrettyPrint
  = lens _eldPrettyPrint
      (\ s a -> s{_eldPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eldPackageName :: Lens' EditsListingsDelete' Text
eldPackageName
  = lens _eldPackageName
      (\ s a -> s{_eldPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eldUserIP :: Lens' EditsListingsDelete' (Maybe Text)
eldUserIP
  = lens _eldUserIP (\ s a -> s{_eldUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eldKey :: Lens' EditsListingsDelete' (Maybe AuthKey)
eldKey = lens _eldKey (\ s a -> s{_eldKey = a})

-- | The language code (a BCP-47 language tag) of the localized listing to
-- read or modify. For example, to select Austrian German, pass \"de-AT\".
eldLanguage :: Lens' EditsListingsDelete' Text
eldLanguage
  = lens _eldLanguage (\ s a -> s{_eldLanguage = a})

-- | OAuth 2.0 token for the current user.
eldOAuthToken :: Lens' EditsListingsDelete' (Maybe OAuthToken)
eldOAuthToken
  = lens _eldOAuthToken
      (\ s a -> s{_eldOAuthToken = a})

-- | Unique identifier for this edit.
eldEditId :: Lens' EditsListingsDelete' Text
eldEditId
  = lens _eldEditId (\ s a -> s{_eldEditId = a})

-- | Selector specifying which fields to include in a partial response.
eldFields :: Lens' EditsListingsDelete' (Maybe Text)
eldFields
  = lens _eldFields (\ s a -> s{_eldFields = a})

instance GoogleAuth EditsListingsDelete' where
        authKey = eldKey . _Just
        authToken = eldOAuthToken . _Just

instance GoogleRequest EditsListingsDelete' where
        type Rs EditsListingsDelete' = ()
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsListingsDelete'{..}
          = go _eldPackageName _eldEditId _eldLanguage
              _eldQuotaUser
              (Just _eldPrettyPrint)
              _eldUserIP
              _eldFields
              _eldKey
              _eldOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsListingsDeleteResource)
                      r
                      u
