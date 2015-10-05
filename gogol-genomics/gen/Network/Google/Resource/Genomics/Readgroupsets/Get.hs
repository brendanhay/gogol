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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a read group set by ID.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReadgroupsetsGet@.
module Network.Google.Resource.Genomics.Readgroupsets.Get
    (
    -- * REST Resource
      ReadgroupsetsGetResource

    -- * Creating a Request
    , readgroupsetsGet'
    , ReadgroupsetsGet'

    -- * Request Lenses
    , rgQuotaUser
    , rgPrettyPrint
    , rgReadGroupSetId
    , rgUserIP
    , rgKey
    , rgOAuthToken
    , rgFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReadgroupsetsGet@ which the
-- 'ReadgroupsetsGet'' request conforms to.
type ReadgroupsetsGetResource =
     "readgroupsets" :>
       Capture "readGroupSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] ReadGroupSet

-- | Gets a read group set by ID.
--
-- /See:/ 'readgroupsetsGet'' smart constructor.
data ReadgroupsetsGet' = ReadgroupsetsGet'
    { _rgQuotaUser      :: !(Maybe Text)
    , _rgPrettyPrint    :: !Bool
    , _rgReadGroupSetId :: !Text
    , _rgUserIP         :: !(Maybe Text)
    , _rgKey            :: !(Maybe Key)
    , _rgOAuthToken     :: !(Maybe OAuthToken)
    , _rgFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgReadGroupSetId'
--
-- * 'rgUserIP'
--
-- * 'rgKey'
--
-- * 'rgOAuthToken'
--
-- * 'rgFields'
readgroupsetsGet'
    :: Text -- ^ 'readGroupSetId'
    -> ReadgroupsetsGet'
readgroupsetsGet' pRgReadGroupSetId_ =
    ReadgroupsetsGet'
    { _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgReadGroupSetId = pRgReadGroupSetId_
    , _rgUserIP = Nothing
    , _rgKey = Nothing
    , _rgOAuthToken = Nothing
    , _rgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgQuotaUser :: Lens' ReadgroupsetsGet' (Maybe Text)
rgQuotaUser
  = lens _rgQuotaUser (\ s a -> s{_rgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgPrettyPrint :: Lens' ReadgroupsetsGet' Bool
rgPrettyPrint
  = lens _rgPrettyPrint
      (\ s a -> s{_rgPrettyPrint = a})

-- | The ID of the read group set.
rgReadGroupSetId :: Lens' ReadgroupsetsGet' Text
rgReadGroupSetId
  = lens _rgReadGroupSetId
      (\ s a -> s{_rgReadGroupSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgUserIP :: Lens' ReadgroupsetsGet' (Maybe Text)
rgUserIP = lens _rgUserIP (\ s a -> s{_rgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' ReadgroupsetsGet' (Maybe Key)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | OAuth 2.0 token for the current user.
rgOAuthToken :: Lens' ReadgroupsetsGet' (Maybe OAuthToken)
rgOAuthToken
  = lens _rgOAuthToken (\ s a -> s{_rgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' ReadgroupsetsGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

instance GoogleAuth ReadgroupsetsGet' where
        authKey = rgKey . _Just
        authToken = rgOAuthToken . _Just

instance GoogleRequest ReadgroupsetsGet' where
        type Rs ReadgroupsetsGet' = ReadGroupSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReadgroupsetsGet'{..}
          = go _rgReadGroupSetId _rgQuotaUser
              (Just _rgPrettyPrint)
              _rgUserIP
              _rgFields
              _rgKey
              _rgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReadgroupsetsGetResource)
                      r
                      u
