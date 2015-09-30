{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Listings.Deleteall
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes all localized listings from an edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsListingsDeleteall@.
module Androidpublisher.Edits.Listings.Deleteall
    (
    -- * REST Resource
      EditsListingsDeleteallAPI

    -- * Creating a Request
    , editsListingsDeleteall
    , EditsListingsDeleteall

    -- * Request Lenses
    , eldQuotaUser
    , eldPrettyPrint
    , eldPackageName
    , eldUserIp
    , eldKey
    , eldOauthToken
    , eldEditId
    , eldFields
    , eldAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsListingsDeleteall@ which the
-- 'EditsListingsDeleteall' request conforms to.
type EditsListingsDeleteallAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :> Delete '[JSON] ()

-- | Deletes all localized listings from an edit.
--
-- /See:/ 'editsListingsDeleteall' smart constructor.
data EditsListingsDeleteall = EditsListingsDeleteall
    { _eldQuotaUser   :: !(Maybe Text)
    , _eldPrettyPrint :: !Bool
    , _eldPackageName :: !Text
    , _eldUserIp      :: !(Maybe Text)
    , _eldKey         :: !(Maybe Text)
    , _eldOauthToken  :: !(Maybe Text)
    , _eldEditId      :: !Text
    , _eldFields      :: !(Maybe Text)
    , _eldAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsDeleteall'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eldQuotaUser'
--
-- * 'eldPrettyPrint'
--
-- * 'eldPackageName'
--
-- * 'eldUserIp'
--
-- * 'eldKey'
--
-- * 'eldOauthToken'
--
-- * 'eldEditId'
--
-- * 'eldFields'
--
-- * 'eldAlt'
editsListingsDeleteall
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsListingsDeleteall
editsListingsDeleteall pEldPackageName_ pEldEditId_ =
    EditsListingsDeleteall
    { _eldQuotaUser = Nothing
    , _eldPrettyPrint = True
    , _eldPackageName = pEldPackageName_
    , _eldUserIp = Nothing
    , _eldKey = Nothing
    , _eldOauthToken = Nothing
    , _eldEditId = pEldEditId_
    , _eldFields = Nothing
    , _eldAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eldQuotaUser :: Lens' EditsListingsDeleteall' (Maybe Text)
eldQuotaUser
  = lens _eldQuotaUser (\ s a -> s{_eldQuotaUser = a})

-- | Returns response with indentations and line breaks.
eldPrettyPrint :: Lens' EditsListingsDeleteall' Bool
eldPrettyPrint
  = lens _eldPrettyPrint
      (\ s a -> s{_eldPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eldPackageName :: Lens' EditsListingsDeleteall' Text
eldPackageName
  = lens _eldPackageName
      (\ s a -> s{_eldPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eldUserIp :: Lens' EditsListingsDeleteall' (Maybe Text)
eldUserIp
  = lens _eldUserIp (\ s a -> s{_eldUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eldKey :: Lens' EditsListingsDeleteall' (Maybe Text)
eldKey = lens _eldKey (\ s a -> s{_eldKey = a})

-- | OAuth 2.0 token for the current user.
eldOauthToken :: Lens' EditsListingsDeleteall' (Maybe Text)
eldOauthToken
  = lens _eldOauthToken
      (\ s a -> s{_eldOauthToken = a})

-- | Unique identifier for this edit.
eldEditId :: Lens' EditsListingsDeleteall' Text
eldEditId
  = lens _eldEditId (\ s a -> s{_eldEditId = a})

-- | Selector specifying which fields to include in a partial response.
eldFields :: Lens' EditsListingsDeleteall' (Maybe Text)
eldFields
  = lens _eldFields (\ s a -> s{_eldFields = a})

-- | Data format for the response.
eldAlt :: Lens' EditsListingsDeleteall' Text
eldAlt = lens _eldAlt (\ s a -> s{_eldAlt = a})

instance GoogleRequest EditsListingsDeleteall' where
        type Rs EditsListingsDeleteall' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsListingsDeleteall{..}
          = go _eldQuotaUser _eldPrettyPrint _eldPackageName
              _eldUserIp
              _eldKey
              _eldOauthToken
              _eldEditId
              _eldFields
              _eldAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsListingsDeleteallAPI)
                      r
                      u
