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
-- Module      : Network.Google.Resource.DFAReporting.Sizes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one size by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSizesGet@.
module Network.Google.Resource.DFAReporting.Sizes.Get
    (
    -- * REST Resource
      SizesGetResource

    -- * Creating a Request
    , sizesGet'
    , SizesGet'

    -- * Request Lenses
    , sizQuotaUser
    , sizPrettyPrint
    , sizUserIP
    , sizProFileId
    , sizKey
    , sizId
    , sizOAuthToken
    , sizFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSizesGet@ method which the
-- 'SizesGet'' request conforms to.
type SizesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sizes" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Size

-- | Gets one size by ID.
--
-- /See:/ 'sizesGet'' smart constructor.
data SizesGet' = SizesGet'
    { _sizQuotaUser   :: !(Maybe Text)
    , _sizPrettyPrint :: !Bool
    , _sizUserIP      :: !(Maybe Text)
    , _sizProFileId   :: !Int64
    , _sizKey         :: !(Maybe AuthKey)
    , _sizId          :: !Int64
    , _sizOAuthToken  :: !(Maybe OAuthToken)
    , _sizFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sizQuotaUser'
--
-- * 'sizPrettyPrint'
--
-- * 'sizUserIP'
--
-- * 'sizProFileId'
--
-- * 'sizKey'
--
-- * 'sizId'
--
-- * 'sizOAuthToken'
--
-- * 'sizFields'
sizesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SizesGet'
sizesGet' pSizProFileId_ pSizId_ =
    SizesGet'
    { _sizQuotaUser = Nothing
    , _sizPrettyPrint = True
    , _sizUserIP = Nothing
    , _sizProFileId = pSizProFileId_
    , _sizKey = Nothing
    , _sizId = pSizId_
    , _sizOAuthToken = Nothing
    , _sizFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sizQuotaUser :: Lens' SizesGet' (Maybe Text)
sizQuotaUser
  = lens _sizQuotaUser (\ s a -> s{_sizQuotaUser = a})

-- | Returns response with indentations and line breaks.
sizPrettyPrint :: Lens' SizesGet' Bool
sizPrettyPrint
  = lens _sizPrettyPrint
      (\ s a -> s{_sizPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sizUserIP :: Lens' SizesGet' (Maybe Text)
sizUserIP
  = lens _sizUserIP (\ s a -> s{_sizUserIP = a})

-- | User profile ID associated with this request.
sizProFileId :: Lens' SizesGet' Int64
sizProFileId
  = lens _sizProFileId (\ s a -> s{_sizProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sizKey :: Lens' SizesGet' (Maybe AuthKey)
sizKey = lens _sizKey (\ s a -> s{_sizKey = a})

-- | Size ID.
sizId :: Lens' SizesGet' Int64
sizId = lens _sizId (\ s a -> s{_sizId = a})

-- | OAuth 2.0 token for the current user.
sizOAuthToken :: Lens' SizesGet' (Maybe OAuthToken)
sizOAuthToken
  = lens _sizOAuthToken
      (\ s a -> s{_sizOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sizFields :: Lens' SizesGet' (Maybe Text)
sizFields
  = lens _sizFields (\ s a -> s{_sizFields = a})

instance GoogleAuth SizesGet' where
        _AuthKey = sizKey . _Just
        _AuthToken = sizOAuthToken . _Just

instance GoogleRequest SizesGet' where
        type Rs SizesGet' = Size
        request = requestWith dFAReportingRequest
        requestWith rq SizesGet'{..}
          = go _sizProFileId _sizId _sizQuotaUser
              (Just _sizPrettyPrint)
              _sizUserIP
              _sizFields
              _sizKey
              _sizOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy SizesGetResource) rq
