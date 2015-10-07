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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates or updates a localized store listing. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsListingsPatch@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.Patch
    (
    -- * REST Resource
      EditsListingsPatchResource

    -- * Creating a Request
    , editsListingsPatch'
    , EditsListingsPatch'

    -- * Request Lenses
    , elpQuotaUser
    , elpPrettyPrint
    , elpPackageName
    , elpUserIP
    , elpPayload
    , elpKey
    , elpLanguage
    , elpOAuthToken
    , elpEditId
    , elpFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsListingsPatch@ method which the
-- 'EditsListingsPatch'' request conforms to.
type EditsListingsPatchResource =
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
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Listing :> Patch '[JSON] Listing

-- | Creates or updates a localized store listing. This method supports patch
-- semantics.
--
-- /See:/ 'editsListingsPatch'' smart constructor.
data EditsListingsPatch' = EditsListingsPatch'
    { _elpQuotaUser   :: !(Maybe Text)
    , _elpPrettyPrint :: !Bool
    , _elpPackageName :: !Text
    , _elpUserIP      :: !(Maybe Text)
    , _elpPayload     :: !Listing
    , _elpKey         :: !(Maybe AuthKey)
    , _elpLanguage    :: !Text
    , _elpOAuthToken  :: !(Maybe OAuthToken)
    , _elpEditId      :: !Text
    , _elpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elpQuotaUser'
--
-- * 'elpPrettyPrint'
--
-- * 'elpPackageName'
--
-- * 'elpUserIP'
--
-- * 'elpPayload'
--
-- * 'elpKey'
--
-- * 'elpLanguage'
--
-- * 'elpOAuthToken'
--
-- * 'elpEditId'
--
-- * 'elpFields'
editsListingsPatch'
    :: Text -- ^ 'packageName'
    -> Listing -- ^ 'payload'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsListingsPatch'
editsListingsPatch' pElpPackageName_ pElpPayload_ pElpLanguage_ pElpEditId_ =
    EditsListingsPatch'
    { _elpQuotaUser = Nothing
    , _elpPrettyPrint = True
    , _elpPackageName = pElpPackageName_
    , _elpUserIP = Nothing
    , _elpPayload = pElpPayload_
    , _elpKey = Nothing
    , _elpLanguage = pElpLanguage_
    , _elpOAuthToken = Nothing
    , _elpEditId = pElpEditId_
    , _elpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
elpQuotaUser :: Lens' EditsListingsPatch' (Maybe Text)
elpQuotaUser
  = lens _elpQuotaUser (\ s a -> s{_elpQuotaUser = a})

-- | Returns response with indentations and line breaks.
elpPrettyPrint :: Lens' EditsListingsPatch' Bool
elpPrettyPrint
  = lens _elpPrettyPrint
      (\ s a -> s{_elpPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
elpPackageName :: Lens' EditsListingsPatch' Text
elpPackageName
  = lens _elpPackageName
      (\ s a -> s{_elpPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
elpUserIP :: Lens' EditsListingsPatch' (Maybe Text)
elpUserIP
  = lens _elpUserIP (\ s a -> s{_elpUserIP = a})

-- | Multipart request metadata.
elpPayload :: Lens' EditsListingsPatch' Listing
elpPayload
  = lens _elpPayload (\ s a -> s{_elpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
elpKey :: Lens' EditsListingsPatch' (Maybe AuthKey)
elpKey = lens _elpKey (\ s a -> s{_elpKey = a})

-- | The language code (a BCP-47 language tag) of the localized listing to
-- read or modify. For example, to select Austrian German, pass \"de-AT\".
elpLanguage :: Lens' EditsListingsPatch' Text
elpLanguage
  = lens _elpLanguage (\ s a -> s{_elpLanguage = a})

-- | OAuth 2.0 token for the current user.
elpOAuthToken :: Lens' EditsListingsPatch' (Maybe OAuthToken)
elpOAuthToken
  = lens _elpOAuthToken
      (\ s a -> s{_elpOAuthToken = a})

-- | Unique identifier for this edit.
elpEditId :: Lens' EditsListingsPatch' Text
elpEditId
  = lens _elpEditId (\ s a -> s{_elpEditId = a})

-- | Selector specifying which fields to include in a partial response.
elpFields :: Lens' EditsListingsPatch' (Maybe Text)
elpFields
  = lens _elpFields (\ s a -> s{_elpFields = a})

instance GoogleAuth EditsListingsPatch' where
        _AuthKey = elpKey . _Just
        _AuthToken = elpOAuthToken . _Just

instance GoogleRequest EditsListingsPatch' where
        type Rs EditsListingsPatch' = Listing
        request = requestWith androidPublisherRequest
        requestWith rq EditsListingsPatch'{..}
          = go _elpPackageName _elpEditId _elpLanguage
              _elpQuotaUser
              (Just _elpPrettyPrint)
              _elpUserIP
              _elpFields
              _elpKey
              _elpOAuthToken
              (Just AltJSON)
              _elpPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy EditsListingsPatchResource)
                      rq
