{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Listings.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified localized store listing from an edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsListingsDelete@.
module Androidpublisher.Edits.Listings.Delete
    (
    -- * REST Resource
      EditsListingsDeleteAPI

    -- * Creating a Request
    , editsListingsDelete
    , EditsListingsDelete

    -- * Request Lenses
    , eldlQuotaUser
    , eldlPrettyPrint
    , eldlPackageName
    , eldlUserIp
    , eldlKey
    , eldlLanguage
    , eldlOauthToken
    , eldlEditId
    , eldlFields
    , eldlAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsListingsDelete@ which the
-- 'EditsListingsDelete' request conforms to.
type EditsListingsDeleteAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :> Delete '[JSON] ()

-- | Deletes the specified localized store listing from an edit.
--
-- /See:/ 'editsListingsDelete' smart constructor.
data EditsListingsDelete = EditsListingsDelete
    { _eldlQuotaUser   :: !(Maybe Text)
    , _eldlPrettyPrint :: !Bool
    , _eldlPackageName :: !Text
    , _eldlUserIp      :: !(Maybe Text)
    , _eldlKey         :: !(Maybe Text)
    , _eldlLanguage    :: !Text
    , _eldlOauthToken  :: !(Maybe Text)
    , _eldlEditId      :: !Text
    , _eldlFields      :: !(Maybe Text)
    , _eldlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eldlQuotaUser'
--
-- * 'eldlPrettyPrint'
--
-- * 'eldlPackageName'
--
-- * 'eldlUserIp'
--
-- * 'eldlKey'
--
-- * 'eldlLanguage'
--
-- * 'eldlOauthToken'
--
-- * 'eldlEditId'
--
-- * 'eldlFields'
--
-- * 'eldlAlt'
editsListingsDelete
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsListingsDelete
editsListingsDelete pEldlPackageName_ pEldlLanguage_ pEldlEditId_ =
    EditsListingsDelete
    { _eldlQuotaUser = Nothing
    , _eldlPrettyPrint = True
    , _eldlPackageName = pEldlPackageName_
    , _eldlUserIp = Nothing
    , _eldlKey = Nothing
    , _eldlLanguage = pEldlLanguage_
    , _eldlOauthToken = Nothing
    , _eldlEditId = pEldlEditId_
    , _eldlFields = Nothing
    , _eldlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eldlQuotaUser :: Lens' EditsListingsDelete' (Maybe Text)
eldlQuotaUser
  = lens _eldlQuotaUser
      (\ s a -> s{_eldlQuotaUser = a})

-- | Returns response with indentations and line breaks.
eldlPrettyPrint :: Lens' EditsListingsDelete' Bool
eldlPrettyPrint
  = lens _eldlPrettyPrint
      (\ s a -> s{_eldlPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eldlPackageName :: Lens' EditsListingsDelete' Text
eldlPackageName
  = lens _eldlPackageName
      (\ s a -> s{_eldlPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eldlUserIp :: Lens' EditsListingsDelete' (Maybe Text)
eldlUserIp
  = lens _eldlUserIp (\ s a -> s{_eldlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eldlKey :: Lens' EditsListingsDelete' (Maybe Text)
eldlKey = lens _eldlKey (\ s a -> s{_eldlKey = a})

-- | The language code (a BCP-47 language tag) of the localized listing to
-- read or modify. For example, to select Austrian German, pass \"de-AT\".
eldlLanguage :: Lens' EditsListingsDelete' Text
eldlLanguage
  = lens _eldlLanguage (\ s a -> s{_eldlLanguage = a})

-- | OAuth 2.0 token for the current user.
eldlOauthToken :: Lens' EditsListingsDelete' (Maybe Text)
eldlOauthToken
  = lens _eldlOauthToken
      (\ s a -> s{_eldlOauthToken = a})

-- | Unique identifier for this edit.
eldlEditId :: Lens' EditsListingsDelete' Text
eldlEditId
  = lens _eldlEditId (\ s a -> s{_eldlEditId = a})

-- | Selector specifying which fields to include in a partial response.
eldlFields :: Lens' EditsListingsDelete' (Maybe Text)
eldlFields
  = lens _eldlFields (\ s a -> s{_eldlFields = a})

-- | Data format for the response.
eldlAlt :: Lens' EditsListingsDelete' Text
eldlAlt = lens _eldlAlt (\ s a -> s{_eldlAlt = a})

instance GoogleRequest EditsListingsDelete' where
        type Rs EditsListingsDelete' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsListingsDelete{..}
          = go _eldlQuotaUser _eldlPrettyPrint _eldlPackageName
              _eldlUserIp
              _eldlKey
              _eldlLanguage
              _eldlOauthToken
              _eldlEditId
              _eldlFields
              _eldlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsListingsDeleteAPI)
                      r
                      u
