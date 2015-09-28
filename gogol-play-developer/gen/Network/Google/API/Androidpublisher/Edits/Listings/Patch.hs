{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Listings.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates or updates a localized store listing. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.listings.patch@.
module Network.Google.API.Androidpublisher.Edits.Listings.Patch
    (
    -- * REST Resource
      EditsListingsPatchAPI

    -- * Creating a Request
    , editsListingsPatch'
    , EditsListingsPatch'

    -- * Request Lenses
    , elpQuotaUser
    , elpPrettyPrint
    , elpPackageName
    , elpUserIp
    , elpKey
    , elpLanguage
    , elpOauthToken
    , elpEditId
    , elpFields
    , elpAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.listings.patch which the
-- 'EditsListingsPatch'' request conforms to.
type EditsListingsPatchAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Patch '[JSON] Listing

-- | Creates or updates a localized store listing. This method supports patch
-- semantics.
--
-- /See:/ 'editsListingsPatch'' smart constructor.
data EditsListingsPatch' = EditsListingsPatch'
    { _elpQuotaUser   :: !(Maybe Text)
    , _elpPrettyPrint :: !Bool
    , _elpPackageName :: !Text
    , _elpUserIp      :: !(Maybe Text)
    , _elpKey         :: !(Maybe Text)
    , _elpLanguage    :: !Text
    , _elpOauthToken  :: !(Maybe Text)
    , _elpEditId      :: !Text
    , _elpFields      :: !(Maybe Text)
    , _elpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'elpUserIp'
--
-- * 'elpKey'
--
-- * 'elpLanguage'
--
-- * 'elpOauthToken'
--
-- * 'elpEditId'
--
-- * 'elpFields'
--
-- * 'elpAlt'
editsListingsPatch'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsListingsPatch'
editsListingsPatch' pElpPackageName_ pElpLanguage_ pElpEditId_ =
    EditsListingsPatch'
    { _elpQuotaUser = Nothing
    , _elpPrettyPrint = True
    , _elpPackageName = pElpPackageName_
    , _elpUserIp = Nothing
    , _elpKey = Nothing
    , _elpLanguage = pElpLanguage_
    , _elpOauthToken = Nothing
    , _elpEditId = pElpEditId_
    , _elpFields = Nothing
    , _elpAlt = JSON
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
elpUserIp :: Lens' EditsListingsPatch' (Maybe Text)
elpUserIp
  = lens _elpUserIp (\ s a -> s{_elpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
elpKey :: Lens' EditsListingsPatch' (Maybe Text)
elpKey = lens _elpKey (\ s a -> s{_elpKey = a})

-- | The language code (a BCP-47 language tag) of the localized listing to
-- read or modify. For example, to select Austrian German, pass \"de-AT\".
elpLanguage :: Lens' EditsListingsPatch' Text
elpLanguage
  = lens _elpLanguage (\ s a -> s{_elpLanguage = a})

-- | OAuth 2.0 token for the current user.
elpOauthToken :: Lens' EditsListingsPatch' (Maybe Text)
elpOauthToken
  = lens _elpOauthToken
      (\ s a -> s{_elpOauthToken = a})

-- | Unique identifier for this edit.
elpEditId :: Lens' EditsListingsPatch' Text
elpEditId
  = lens _elpEditId (\ s a -> s{_elpEditId = a})

-- | Selector specifying which fields to include in a partial response.
elpFields :: Lens' EditsListingsPatch' (Maybe Text)
elpFields
  = lens _elpFields (\ s a -> s{_elpFields = a})

-- | Data format for the response.
elpAlt :: Lens' EditsListingsPatch' Alt
elpAlt = lens _elpAlt (\ s a -> s{_elpAlt = a})

instance GoogleRequest EditsListingsPatch' where
        type Rs EditsListingsPatch' = Listing
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsListingsPatch'{..}
          = go _elpQuotaUser (Just _elpPrettyPrint)
              _elpPackageName
              _elpUserIp
              _elpKey
              _elpLanguage
              _elpOauthToken
              _elpEditId
              _elpFields
              (Just _elpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsListingsPatchAPI)
                      r
                      u
