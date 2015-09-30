{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Listings.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates or updates a localized store listing.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsListingsUpdate@.
module Androidpublisher.Edits.Listings.Update
    (
    -- * REST Resource
      EditsListingsUpdateAPI

    -- * Creating a Request
    , editsListingsUpdate
    , EditsListingsUpdate

    -- * Request Lenses
    , eluQuotaUser
    , eluPrettyPrint
    , eluPackageName
    , eluUserIp
    , eluKey
    , eluLanguage
    , eluOauthToken
    , eluEditId
    , eluFields
    , eluAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsListingsUpdate@ which the
-- 'EditsListingsUpdate' request conforms to.
type EditsListingsUpdateAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :> Put '[JSON] Listing

-- | Creates or updates a localized store listing.
--
-- /See:/ 'editsListingsUpdate' smart constructor.
data EditsListingsUpdate = EditsListingsUpdate
    { _eluQuotaUser   :: !(Maybe Text)
    , _eluPrettyPrint :: !Bool
    , _eluPackageName :: !Text
    , _eluUserIp      :: !(Maybe Text)
    , _eluKey         :: !(Maybe Text)
    , _eluLanguage    :: !Text
    , _eluOauthToken  :: !(Maybe Text)
    , _eluEditId      :: !Text
    , _eluFields      :: !(Maybe Text)
    , _eluAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eluQuotaUser'
--
-- * 'eluPrettyPrint'
--
-- * 'eluPackageName'
--
-- * 'eluUserIp'
--
-- * 'eluKey'
--
-- * 'eluLanguage'
--
-- * 'eluOauthToken'
--
-- * 'eluEditId'
--
-- * 'eluFields'
--
-- * 'eluAlt'
editsListingsUpdate
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsListingsUpdate
editsListingsUpdate pEluPackageName_ pEluLanguage_ pEluEditId_ =
    EditsListingsUpdate
    { _eluQuotaUser = Nothing
    , _eluPrettyPrint = True
    , _eluPackageName = pEluPackageName_
    , _eluUserIp = Nothing
    , _eluKey = Nothing
    , _eluLanguage = pEluLanguage_
    , _eluOauthToken = Nothing
    , _eluEditId = pEluEditId_
    , _eluFields = Nothing
    , _eluAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eluQuotaUser :: Lens' EditsListingsUpdate' (Maybe Text)
eluQuotaUser
  = lens _eluQuotaUser (\ s a -> s{_eluQuotaUser = a})

-- | Returns response with indentations and line breaks.
eluPrettyPrint :: Lens' EditsListingsUpdate' Bool
eluPrettyPrint
  = lens _eluPrettyPrint
      (\ s a -> s{_eluPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eluPackageName :: Lens' EditsListingsUpdate' Text
eluPackageName
  = lens _eluPackageName
      (\ s a -> s{_eluPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eluUserIp :: Lens' EditsListingsUpdate' (Maybe Text)
eluUserIp
  = lens _eluUserIp (\ s a -> s{_eluUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eluKey :: Lens' EditsListingsUpdate' (Maybe Text)
eluKey = lens _eluKey (\ s a -> s{_eluKey = a})

-- | The language code (a BCP-47 language tag) of the localized listing to
-- read or modify. For example, to select Austrian German, pass \"de-AT\".
eluLanguage :: Lens' EditsListingsUpdate' Text
eluLanguage
  = lens _eluLanguage (\ s a -> s{_eluLanguage = a})

-- | OAuth 2.0 token for the current user.
eluOauthToken :: Lens' EditsListingsUpdate' (Maybe Text)
eluOauthToken
  = lens _eluOauthToken
      (\ s a -> s{_eluOauthToken = a})

-- | Unique identifier for this edit.
eluEditId :: Lens' EditsListingsUpdate' Text
eluEditId
  = lens _eluEditId (\ s a -> s{_eluEditId = a})

-- | Selector specifying which fields to include in a partial response.
eluFields :: Lens' EditsListingsUpdate' (Maybe Text)
eluFields
  = lens _eluFields (\ s a -> s{_eluFields = a})

-- | Data format for the response.
eluAlt :: Lens' EditsListingsUpdate' Text
eluAlt = lens _eluAlt (\ s a -> s{_eluAlt = a})

instance GoogleRequest EditsListingsUpdate' where
        type Rs EditsListingsUpdate' = Listing
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsListingsUpdate{..}
          = go _eluQuotaUser _eluPrettyPrint _eluPackageName
              _eluUserIp
              _eluKey
              _eluLanguage
              _eluOauthToken
              _eluEditId
              _eluFields
              _eluAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsListingsUpdateAPI)
                      r
                      u
