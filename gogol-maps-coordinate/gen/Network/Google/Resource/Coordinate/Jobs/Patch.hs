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
-- Module      : Network.Google.Resource.Coordinate.Jobs.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a job. Fields that are set in the job state will be updated.
-- This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @coordinate.jobs.patch@.
module Network.Google.Resource.Coordinate.Jobs.Patch
    (
    -- * REST Resource
      JobsPatchResource

    -- * Creating a Request
    , jobsPatch
    , JobsPatch

    -- * Request Lenses
    , jpJobId
    , jpProgress
    , jpNote
    , jpTeamId
    , jpCustomerPhoneNumber
    , jpCustomerName
    , jpAddress
    , jpPayload
    , jpAssignee
    , jpLat
    , jpLng
    , jpTitle
    , jpCustomField
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @coordinate.jobs.patch@ method which the
-- 'JobsPatch' request conforms to.
type JobsPatchResource =
     "coordinate" :>
       "v1" :>
         "teams" :>
           Capture "teamId" Text :>
             "jobs" :>
               Capture "jobId" (Textual Word64) :>
                 QueryParam "progress" JobsPatchProgress :>
                   QueryParam "note" Text :>
                     QueryParam "customerPhoneNumber" Text :>
                       QueryParam "customerName" Text :>
                         QueryParam "address" Text :>
                           QueryParam "assignee" Text :>
                             QueryParam "lat" (Textual Double) :>
                               QueryParam "lng" (Textual Double) :>
                                 QueryParam "title" Text :>
                                   QueryParams "customField" Text :>
                                     QueryParam "alt" AltJSON :>
                                       ReqBody '[JSON] Job :> Patch '[JSON] Job

-- | Updates a job. Fields that are set in the job state will be updated.
-- This method supports patch semantics.
--
-- /See:/ 'jobsPatch' smart constructor.
data JobsPatch = JobsPatch
    { _jpJobId               :: !(Textual Word64)
    , _jpProgress            :: !(Maybe JobsPatchProgress)
    , _jpNote                :: !(Maybe Text)
    , _jpTeamId              :: !Text
    , _jpCustomerPhoneNumber :: !(Maybe Text)
    , _jpCustomerName        :: !(Maybe Text)
    , _jpAddress             :: !(Maybe Text)
    , _jpPayload             :: !Job
    , _jpAssignee            :: !(Maybe Text)
    , _jpLat                 :: !(Maybe (Textual Double))
    , _jpLng                 :: !(Maybe (Textual Double))
    , _jpTitle               :: !(Maybe Text)
    , _jpCustomField         :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jpJobId'
--
-- * 'jpProgress'
--
-- * 'jpNote'
--
-- * 'jpTeamId'
--
-- * 'jpCustomerPhoneNumber'
--
-- * 'jpCustomerName'
--
-- * 'jpAddress'
--
-- * 'jpPayload'
--
-- * 'jpAssignee'
--
-- * 'jpLat'
--
-- * 'jpLng'
--
-- * 'jpTitle'
--
-- * 'jpCustomField'
jobsPatch
    :: Word64 -- ^ 'jpJobId'
    -> Text -- ^ 'jpTeamId'
    -> Job -- ^ 'jpPayload'
    -> JobsPatch
jobsPatch pJpJobId_ pJpTeamId_ pJpPayload_ =
    JobsPatch
    { _jpJobId = _Coerce # pJpJobId_
    , _jpProgress = Nothing
    , _jpNote = Nothing
    , _jpTeamId = pJpTeamId_
    , _jpCustomerPhoneNumber = Nothing
    , _jpCustomerName = Nothing
    , _jpAddress = Nothing
    , _jpPayload = pJpPayload_
    , _jpAssignee = Nothing
    , _jpLat = Nothing
    , _jpLng = Nothing
    , _jpTitle = Nothing
    , _jpCustomField = Nothing
    }

-- | Job number
jpJobId :: Lens' JobsPatch Word64
jpJobId
  = lens _jpJobId (\ s a -> s{_jpJobId = a}) . _Coerce

-- | Job progress
jpProgress :: Lens' JobsPatch (Maybe JobsPatchProgress)
jpProgress
  = lens _jpProgress (\ s a -> s{_jpProgress = a})

-- | Job note as newline (Unix) separated string
jpNote :: Lens' JobsPatch (Maybe Text)
jpNote = lens _jpNote (\ s a -> s{_jpNote = a})

-- | Team ID
jpTeamId :: Lens' JobsPatch Text
jpTeamId = lens _jpTeamId (\ s a -> s{_jpTeamId = a})

-- | Customer phone number
jpCustomerPhoneNumber :: Lens' JobsPatch (Maybe Text)
jpCustomerPhoneNumber
  = lens _jpCustomerPhoneNumber
      (\ s a -> s{_jpCustomerPhoneNumber = a})

-- | Customer name
jpCustomerName :: Lens' JobsPatch (Maybe Text)
jpCustomerName
  = lens _jpCustomerName
      (\ s a -> s{_jpCustomerName = a})

-- | Job address as newline (Unix) separated string
jpAddress :: Lens' JobsPatch (Maybe Text)
jpAddress
  = lens _jpAddress (\ s a -> s{_jpAddress = a})

-- | Multipart request metadata.
jpPayload :: Lens' JobsPatch Job
jpPayload
  = lens _jpPayload (\ s a -> s{_jpPayload = a})

-- | Assignee email address, or empty string to unassign.
jpAssignee :: Lens' JobsPatch (Maybe Text)
jpAssignee
  = lens _jpAssignee (\ s a -> s{_jpAssignee = a})

-- | The latitude coordinate of this job\'s location.
jpLat :: Lens' JobsPatch (Maybe Double)
jpLat
  = lens _jpLat (\ s a -> s{_jpLat = a}) .
      mapping _Coerce

-- | The longitude coordinate of this job\'s location.
jpLng :: Lens' JobsPatch (Maybe Double)
jpLng
  = lens _jpLng (\ s a -> s{_jpLng = a}) .
      mapping _Coerce

-- | Job title
jpTitle :: Lens' JobsPatch (Maybe Text)
jpTitle = lens _jpTitle (\ s a -> s{_jpTitle = a})

-- | Sets the value of custom fields. To set a custom field, pass the field
-- id (from \/team\/teamId\/custom_fields), a URL escaped \'=\' character,
-- and the desired value as a parameter. For example,
-- customField=12%3DAlice. Repeat the parameter for each custom field. Note
-- that \'=\' cannot appear in the parameter value. Specifying an invalid,
-- or inactive enum field will result in an error 500.
jpCustomField :: Lens' JobsPatch [Text]
jpCustomField
  = lens _jpCustomField
      (\ s a -> s{_jpCustomField = a})
      . _Default
      . _Coerce

instance GoogleRequest JobsPatch where
        type Rs JobsPatch = Job
        requestClient JobsPatch{..}
          = go _jpTeamId _jpJobId _jpProgress _jpNote
              _jpCustomerPhoneNumber
              _jpCustomerName
              _jpAddress
              _jpAssignee
              _jpLat
              _jpLng
              _jpTitle
              (_jpCustomField ^. _Default)
              (Just AltJSON)
              _jpPayload
              mapsCoordinateService
          where go
                  = buildClient (Proxy :: Proxy JobsPatchResource)
                      mempty
