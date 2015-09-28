{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Listings.Deleteall
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes all localized listings from an edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.listings.deleteall@.
module Network.Google.API.Androidpublisher.Edits.Listings.Deleteall
    (
    -- * REST Resource
      EditsListingsDeleteallAPI

    -- * Creating a Request
    , editsListingsDeleteall'
    , EditsListingsDeleteall'

    -- * Request Lenses
    , eldlQuotaUser
    , eldlPrettyPrint
    , eldlPackageName
    , eldlUserIp
    , eldlKey
    , eldlOauthToken
    , eldlEditId
    , eldlFields
    , eldlAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.listings.deleteall which the
-- 'EditsListingsDeleteall'' request conforms to.
type EditsListingsDeleteallAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes all localized listings from an edit.
--
-- /See:/ 'editsListingsDeleteall'' smart constructor.
data EditsListingsDeleteall' = EditsListingsDeleteall'
    { _eldlQuotaUser   :: !(Maybe Text)
    , _eldlPrettyPrint :: !Bool
    , _eldlPackageName :: !Text
    , _eldlUserIp      :: !(Maybe Text)
    , _eldlKey         :: !(Maybe Text)
    , _eldlOauthToken  :: !(Maybe Text)
    , _eldlEditId      :: !Text
    , _eldlFields      :: !(Maybe Text)
    , _eldlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsDeleteall'' with the minimum fields required to make a request.
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
-- * 'eldlOauthToken'
--
-- * 'eldlEditId'
--
-- * 'eldlFields'
--
-- * 'eldlAlt'
editsListingsDeleteall'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsListingsDeleteall'
editsListingsDeleteall' pEldlPackageName_ pEldlEditId_ =
    EditsListingsDeleteall'
    { _eldlQuotaUser = Nothing
    , _eldlPrettyPrint = True
    , _eldlPackageName = pEldlPackageName_
    , _eldlUserIp = Nothing
    , _eldlKey = Nothing
    , _eldlOauthToken = Nothing
    , _eldlEditId = pEldlEditId_
    , _eldlFields = Nothing
    , _eldlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eldlQuotaUser :: Lens' EditsListingsDeleteall' (Maybe Text)
eldlQuotaUser
  = lens _eldlQuotaUser
      (\ s a -> s{_eldlQuotaUser = a})

-- | Returns response with indentations and line breaks.
eldlPrettyPrint :: Lens' EditsListingsDeleteall' Bool
eldlPrettyPrint
  = lens _eldlPrettyPrint
      (\ s a -> s{_eldlPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eldlPackageName :: Lens' EditsListingsDeleteall' Text
eldlPackageName
  = lens _eldlPackageName
      (\ s a -> s{_eldlPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eldlUserIp :: Lens' EditsListingsDeleteall' (Maybe Text)
eldlUserIp
  = lens _eldlUserIp (\ s a -> s{_eldlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eldlKey :: Lens' EditsListingsDeleteall' (Maybe Text)
eldlKey = lens _eldlKey (\ s a -> s{_eldlKey = a})

-- | OAuth 2.0 token for the current user.
eldlOauthToken :: Lens' EditsListingsDeleteall' (Maybe Text)
eldlOauthToken
  = lens _eldlOauthToken
      (\ s a -> s{_eldlOauthToken = a})

-- | Unique identifier for this edit.
eldlEditId :: Lens' EditsListingsDeleteall' Text
eldlEditId
  = lens _eldlEditId (\ s a -> s{_eldlEditId = a})

-- | Selector specifying which fields to include in a partial response.
eldlFields :: Lens' EditsListingsDeleteall' (Maybe Text)
eldlFields
  = lens _eldlFields (\ s a -> s{_eldlFields = a})

-- | Data format for the response.
eldlAlt :: Lens' EditsListingsDeleteall' Alt
eldlAlt = lens _eldlAlt (\ s a -> s{_eldlAlt = a})

instance GoogleRequest EditsListingsDeleteall' where
        type Rs EditsListingsDeleteall' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsListingsDeleteall'{..}
          = go _eldlQuotaUser (Just _eldlPrettyPrint)
              _eldlPackageName
              _eldlUserIp
              _eldlKey
              _eldlOauthToken
              _eldlEditId
              _eldlFields
              (Just _eldlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsListingsDeleteallAPI)
                      r
                      u
